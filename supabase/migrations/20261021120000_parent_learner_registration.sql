DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name = 'learner'
      AND lower(column_name) = 'dob'
  ) THEN
    ALTER TABLE public.learner ADD COLUMN "DOB" date;
  END IF;
END;
$$;

CREATE UNIQUE INDEX IF NOT EXISTS parent_learner_parent_learner_unique
  ON public.parent_learner ("ParentID", "LearnerID");

CREATE OR REPLACE FUNCTION public.create_parent_for_auth_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = ''
AS $$
DECLARE
  full_name text := coalesce(
    nullif(trim(NEW.raw_user_meta_data ->> 'full_name'), ''),
    'Parent'
  );
  first_name text;
  last_name text;
BEGIN
  first_name := split_part(full_name, ' ', 1);
  last_name := nullif(trim(substr(full_name, length(first_name) + 1)), '');

  INSERT INTO public.parent (
    "AuthUserID",
    "First_Name",
    "Last_Name",
    "Email",
    "Phone"
  )
  VALUES (
    NEW.id,
    first_name,
    coalesce(last_name, first_name),
    NEW.email,
    nullif(NEW.raw_user_meta_data ->> 'phone', '')
  )
  ON CONFLICT ("AuthUserID") DO NOTHING;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS create_parent_after_auth_signup ON auth.users;
CREATE TRIGGER create_parent_after_auth_signup
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.create_parent_for_auth_user();

INSERT INTO public.parent (
  "AuthUserID",
  "First_Name",
  "Last_Name",
  "Email",
  "Phone"
)
SELECT
  users.id,
  split_part(coalesce(nullif(trim(users.raw_user_meta_data ->> 'full_name'), ''), 'Parent'), ' ', 1),
  coalesce(
    nullif(
      trim(
        substr(
          coalesce(nullif(trim(users.raw_user_meta_data ->> 'full_name'), ''), 'Parent'),
          length(split_part(coalesce(nullif(trim(users.raw_user_meta_data ->> 'full_name'), ''), 'Parent'), ' ', 1)) + 1
        )
      ),
      ''
    ),
    split_part(coalesce(nullif(trim(users.raw_user_meta_data ->> 'full_name'), ''), 'Parent'), ' ', 1)
  ),
  users.email,
  nullif(users.raw_user_meta_data ->> 'phone', '')
FROM auth.users AS users
ON CONFLICT ("AuthUserID") DO NOTHING;

CREATE OR REPLACE FUNCTION public.register_learner_for_parent(
  p_first_name text,
  p_last_name text,
  p_grade text,
  p_class text,
  p_dob date,
  p_id_number text,
  p_relationship text
)
RETURNS jsonb
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = ''
AS $$
DECLARE
  user_id uuid := auth.uid();
  parent_id integer;
  learner_id integer;
  full_name text;
  first_parent_name text;
  last_parent_name text;
  user_email text;
  user_phone text;
  relationship_name text := initcap(lower(trim(p_relationship)));
BEGIN
  IF user_id IS NULL THEN
    RAISE EXCEPTION 'You must be signed in to link a learner.'
      USING ERRCODE = '28000';
  END IF;

  IF nullif(trim(p_first_name), '') IS NULL
     OR nullif(trim(p_last_name), '') IS NULL
     OR nullif(trim(p_grade), '') IS NULL
     OR nullif(trim(p_class), '') IS NULL
     OR p_dob IS NULL
     OR p_dob > current_date
     OR nullif(trim(p_id_number), '') IS NULL
     OR trim(p_id_number) !~ '^[0-9]{13}$' THEN
    RAISE EXCEPTION 'Enter valid learner details.'
      USING ERRCODE = '22023';
  END IF;

  IF relationship_name IS NULL OR relationship_name NOT IN (
    'Father', 'Mother', 'Sister', 'Brother', 'Uncle', 'Grandparent', 'Aunt'
  ) THEN
    RAISE EXCEPTION 'Choose a supported parent or guardian relationship.'
      USING ERRCODE = '22023';
  END IF;

  full_name := coalesce(
    nullif(trim(auth.jwt() -> 'user_metadata' ->> 'full_name'), ''),
    'Parent'
  );
  first_parent_name := split_part(full_name, ' ', 1);
  last_parent_name := coalesce(
    nullif(trim(substr(full_name, length(first_parent_name) + 1)), ''),
    first_parent_name
  );
  user_email := auth.jwt() ->> 'email';
  user_phone := nullif(auth.jwt() -> 'user_metadata' ->> 'phone', '');

  INSERT INTO public.parent (
    "AuthUserID",
    "First_Name",
    "Last_Name",
    "Email",
    "Phone"
  )
  VALUES (
    user_id,
    first_parent_name,
    last_parent_name,
    user_email,
    user_phone
  )
  ON CONFLICT ("AuthUserID") DO UPDATE SET
    "First_Name" = excluded."First_Name",
    "Last_Name" = excluded."Last_Name",
    "Email" = excluded."Email",
    "Phone" = excluded."Phone"
  RETURNING "ParentID" INTO parent_id;

  INSERT INTO public.learner (
    "FirstName",
    "LastName",
    "Grade",
    "Class",
    "DOB",
    "IDNumber"
  )
  VALUES (
    trim(p_first_name),
    trim(p_last_name),
    trim(p_grade),
    trim(p_class),
    p_dob,
    trim(p_id_number)
  )
  ON CONFLICT ("IDNumber") DO NOTHING
  RETURNING "LearnerID" INTO learner_id;

  IF learner_id IS NULL THEN
    SELECT learner."LearnerID"
    INTO learner_id
    FROM public.learner AS learner
    WHERE learner."IDNumber" = trim(p_id_number);
  END IF;

  IF learner_id IS NULL THEN
    RAISE EXCEPTION 'Could not find or create the learner record.'
      USING ERRCODE = 'P0002';
  END IF;

  INSERT INTO public.parent_learner (
    "ParentID",
    "LearnerID",
    "Relationship"
  )
  VALUES (parent_id, learner_id, relationship_name)
  ON CONFLICT ("ParentID", "LearnerID") DO UPDATE
    SET "Relationship" = excluded."Relationship";

  RETURN jsonb_build_object(
    'learnerid', learner_id,
    'firstname', trim(p_first_name),
    'lastname', trim(p_last_name),
    'grade', trim(p_grade),
    'class', trim(p_class),
    'relationship', relationship_name
  );
END;
$$;

CREATE OR REPLACE FUNCTION public.get_my_children()
RETURNS TABLE (
  learnerid integer,
  firstname text,
  lastname text,
  grade text,
  class_name text,
  relationship text
)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = ''
AS $$
  SELECT
    learner."LearnerID",
    learner."FirstName"::text,
    learner."LastName"::text,
    learner."Grade"::text,
    learner."Class"::text,
    parent_learner."Relationship"::text
  FROM public.parent AS parent
  JOIN public.parent_learner AS parent_learner
    ON parent_learner."ParentID" = parent."ParentID"
  JOIN public.learner AS learner
    ON learner."LearnerID" = parent_learner."LearnerID"
  WHERE parent."AuthUserID" = auth.uid()
  ORDER BY learner."LastName", learner."FirstName";
$$;

REVOKE ALL ON FUNCTION public.register_learner_for_parent(
  text, text, text, text, date, text, text
) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.register_learner_for_parent(
  text, text, text, text, date, text, text
) TO authenticated;

REVOKE ALL ON FUNCTION public.get_my_children() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_my_children() TO authenticated;
