CREATE UNIQUE INDEX IF NOT EXISTS learner_idnumber_unique
  ON public.learner ("IDNumber");

CREATE UNIQUE INDEX IF NOT EXISTS parent_learner_parent_learner_unique
  ON public.parent_learner ("ParentID", "LearnerID");

CREATE OR REPLACE FUNCTION public.register_parent_and_learner(
  p_auth_id uuid,
  p_first_name text,
  p_last_name text,
  p_email text,
  p_phone text,
  p_learner_first_name text,
  p_learner_last_name text,
  p_grade text,
  p_class text,
  p_dob date,
  p_idnumber text,
  p_relationship text
)
RETURNS jsonb
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = ''
AS $$
DECLARE
  parent_id integer;
  learner_id integer;
  relationship_name text := initcap(lower(trim(p_relationship)));
  auth_email text;
  auth_metadata jsonb;
BEGIN
  IF p_auth_id IS NULL THEN
    RETURN jsonb_build_object(
      'status', 'error',
      'message', 'Parent authentication ID is required.'
    );
  END IF;

  SELECT users.email, users.raw_user_meta_data
  INTO auth_email, auth_metadata
  FROM auth.users AS users
  WHERE users.id = p_auth_id;

  IF auth_email IS NULL OR lower(auth_email) <> lower(coalesce(p_email, '')) THEN
    RETURN jsonb_build_object(
      'status', 'error',
      'message', 'Parent details do not match the registered account.'
    );
  END IF;

  IF nullif(trim(p_first_name), '') IS NULL
     OR nullif(trim(p_last_name), '') IS NULL
     OR nullif(trim(p_learner_first_name), '') IS NULL
     OR nullif(trim(p_learner_last_name), '') IS NULL
     OR nullif(trim(p_grade), '') IS NULL
     OR nullif(trim(p_class), '') IS NULL
     OR p_dob IS NULL
     OR p_dob > current_date
     OR nullif(trim(p_idnumber), '') IS NULL
     OR trim(p_idnumber) !~ '^[0-9]{13}$' THEN
    RETURN jsonb_build_object(
      'status', 'error',
      'message', 'Enter valid parent and learner details.'
    );
  END IF;

  IF relationship_name IS NULL OR relationship_name NOT IN (
    'Father', 'Mother', 'Sister', 'Brother', 'Uncle', 'Grandparent', 'Aunt'
  ) THEN
    RETURN jsonb_build_object(
      'status', 'error',
      'message', 'Choose a supported relationship to the learner.'
    );
  END IF;

  IF (
       regexp_replace(
         trim(coalesce(auth_metadata ->> 'full_name', '')),
         '[[:space:]]+',
         ' ',
         'g'
       ) IS DISTINCT FROM
       regexp_replace(
         trim(concat_ws(' ', trim(p_first_name), trim(p_last_name))),
         '[[:space:]]+',
         ' ',
         'g'
       )
       AND NOT (
         trim(coalesce(auth_metadata ->> 'full_name', '')) =
           trim(p_first_name)
         AND trim(p_last_name) = trim(p_first_name)
       )
     )
     OR nullif(auth_metadata ->> 'phone', '') IS DISTINCT FROM
       nullif(trim(p_phone), '') THEN
    RETURN jsonb_build_object(
      'status', 'error',
      'message', 'Parent details do not match the registered account.'
    );
  END IF;

  INSERT INTO public.parent (
    "AuthUserID",
    "First_Name",
    "Last_Name",
    "Email",
    "Phone"
  )
  VALUES (
    p_auth_id,
    trim(p_first_name),
    trim(p_last_name),
    trim(p_email),
    nullif(trim(p_phone), '')
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
    trim(p_learner_first_name),
    trim(p_learner_last_name),
    trim(p_grade),
    trim(p_class),
    p_dob,
    trim(p_idnumber)
  )
  ON CONFLICT ("IDNumber") DO NOTHING
  RETURNING "LearnerID" INTO learner_id;

  IF learner_id IS NULL THEN
    SELECT learner."LearnerID"
    INTO learner_id
    FROM public.learner AS learner
    WHERE learner."IDNumber" = trim(p_idnumber);
  END IF;

  IF learner_id IS NULL THEN
    RETURN jsonb_build_object(
      'status', 'error',
      'message', 'Could not find or create the learner record.'
    );
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
    'status', 'success',
    'message', 'Parent and learner registered successfully.',
    'learnerid', learner_id,
    'firstname', trim(p_learner_first_name),
    'lastname', trim(p_learner_last_name),
    'grade', trim(p_grade),
    'class_name', trim(p_class),
    'relationship', relationship_name
  );
END;
$$;

REVOKE ALL ON FUNCTION public.register_parent_and_learner(
  uuid, text, text, text, text, text, text, text, text, date, text, text
) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.register_parent_and_learner(
  uuid, text, text, text, text, text, text, text, text, date, text, text
) TO anon, authenticated;
