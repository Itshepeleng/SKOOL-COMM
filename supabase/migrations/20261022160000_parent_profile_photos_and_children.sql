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
  WITH parent_rows AS (
    SELECT to_jsonb(parent) AS data
    FROM public.parent AS parent
  ),
  parent_values AS (
    SELECT
      coalesce(
        data ->> 'AuthUserID',
        data ->> 'authuserid',
        data ->> 'auth_user_id'
      ) AS auth_user_id,
      coalesce(
        data ->> 'ParentID',
        data ->> 'parentid',
        data ->> 'parent_id'
      ) AS parent_id
    FROM parent_rows
  ),
  parent_learner_rows AS (
    SELECT to_jsonb(parent_learner) AS data
    FROM public.parent_learner AS parent_learner
  ),
  parent_learner_values AS (
    SELECT
      coalesce(
        data ->> 'ParentID',
        data ->> 'parentid',
        data ->> 'parent_id'
      ) AS parent_id,
      coalesce(
        data ->> 'LearnerID',
        data ->> 'learnerid',
        data ->> 'learner_id'
      ) AS learner_id,
      coalesce(data ->> 'Relationship', data ->> 'relationship') AS relationship
    FROM parent_learner_rows
  ),
  learner_rows AS (
    SELECT to_jsonb(learner) AS data
    FROM public.learner AS learner
  )
  SELECT
    coalesce(
      learner.data ->> 'LearnerID',
      learner.data ->> 'learnerid',
      learner.data ->> 'learner_id'
    )::integer,
    coalesce(
      learner.data ->> 'FirstName',
      learner.data ->> 'firstname',
      learner.data ->> 'first_name'
    ),
    coalesce(
      learner.data ->> 'LastName',
      learner.data ->> 'lastname',
      learner.data ->> 'last_name'
    ),
    coalesce(learner.data ->> 'Grade', learner.data ->> 'grade'),
    coalesce(
      learner.data ->> 'Class',
      learner.data ->> 'class',
      learner.data ->> 'class_name'
    ),
    parent_learner.relationship
  FROM parent_values AS parent
  JOIN parent_learner_values AS parent_learner
    ON parent_learner.parent_id = parent.parent_id
  JOIN learner_rows AS learner
    ON coalesce(
      learner.data ->> 'LearnerID',
      learner.data ->> 'learnerid',
      learner.data ->> 'learner_id'
    ) = parent_learner.learner_id
  WHERE parent.auth_user_id = auth.uid()::text
  ORDER BY 3, 2;
$$;

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
  parent_auth_column text;
  parent_id_column text;
  parent_first_name_column text;
  parent_last_name_column text;
  parent_email_column text;
  parent_phone_column text;
  learner_id_column text;
  learner_first_name_column text;
  learner_last_name_column text;
  learner_grade_column text;
  learner_class_column text;
  learner_dob_column text;
  learner_idnumber_column text;
  link_parent_id_column text;
  link_learner_id_column text;
  link_relationship_column text;
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

  SELECT
    max(attname::text) FILTER (WHERE lower(attname) IN ('authuserid', 'auth_user_id')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('parentid', 'parent_id')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('first_name', 'firstname')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('last_name', 'lastname')),
    max(attname::text) FILTER (WHERE lower(attname) = 'email'),
    max(attname::text) FILTER (WHERE lower(attname) = 'phone')
  INTO
    parent_auth_column,
    parent_id_column,
    parent_first_name_column,
    parent_last_name_column,
    parent_email_column,
    parent_phone_column
  FROM pg_catalog.pg_attribute
  WHERE attrelid = pg_catalog.to_regclass('public.parent')
    AND attnum > 0
    AND NOT attisdropped;

  SELECT
    max(attname::text) FILTER (WHERE lower(attname) IN ('learnerid', 'learner_id')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('firstname', 'first_name')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('lastname', 'last_name')),
    max(attname::text) FILTER (WHERE lower(attname) = 'grade'),
    max(attname::text) FILTER (WHERE lower(attname) IN ('class', 'class_name')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('dob', 'date_of_birth', 'dateofbirth')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('idnumber', 'id_number'))
  INTO
    learner_id_column,
    learner_first_name_column,
    learner_last_name_column,
    learner_grade_column,
    learner_class_column,
    learner_dob_column,
    learner_idnumber_column
  FROM pg_catalog.pg_attribute
  WHERE attrelid = pg_catalog.to_regclass('public.learner')
    AND attnum > 0
    AND NOT attisdropped;

  SELECT
    max(attname::text) FILTER (WHERE lower(attname) IN ('parentid', 'parent_id')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('learnerid', 'learner_id')),
    max(attname::text) FILTER (WHERE lower(attname) IN ('relationship', 'relationship_name'))
  INTO
    link_parent_id_column,
    link_learner_id_column,
    link_relationship_column
  FROM pg_catalog.pg_attribute
  WHERE attrelid = pg_catalog.to_regclass('public.parent_learner')
    AND attnum > 0
    AND NOT attisdropped;

  IF parent_auth_column IS NULL
     OR parent_id_column IS NULL
     OR parent_first_name_column IS NULL
     OR parent_last_name_column IS NULL
     OR parent_email_column IS NULL
     OR parent_phone_column IS NULL
     OR learner_id_column IS NULL
     OR learner_first_name_column IS NULL
     OR learner_last_name_column IS NULL
     OR learner_grade_column IS NULL
     OR learner_class_column IS NULL
     OR learner_dob_column IS NULL
     OR learner_idnumber_column IS NULL
     OR link_parent_id_column IS NULL
     OR link_learner_id_column IS NULL
     OR link_relationship_column IS NULL THEN
    RAISE EXCEPTION 'The parent and learner tables do not have the expected columns.';
  END IF;

  EXECUTE format(
    'INSERT INTO public.parent (%1$I, %2$I, %3$I, %4$I, %5$I)
     VALUES ($1, $2, $3, $4, nullif($5, ''''))
     ON CONFLICT (%1$I) DO UPDATE SET
       %2$I = excluded.%2$I,
       %3$I = excluded.%3$I,
       %4$I = excluded.%4$I,
       %5$I = excluded.%5$I
     RETURNING %6$I',
    parent_auth_column,
    parent_first_name_column,
    parent_last_name_column,
    parent_email_column,
    parent_phone_column,
    parent_id_column
  )
  INTO parent_id
  USING
    p_auth_id,
    trim(p_first_name),
    trim(p_last_name),
    trim(p_email),
    trim(p_phone);

  EXECUTE format(
    'INSERT INTO public.learner (%1$I, %2$I, %3$I, %4$I, %5$I, %6$I)
     VALUES ($1, $2, $3, $4, $5, $6)
     ON CONFLICT (%6$I) DO NOTHING
     RETURNING %7$I',
    learner_first_name_column,
    learner_last_name_column,
    learner_grade_column,
    learner_class_column,
    learner_dob_column,
    learner_idnumber_column,
    learner_id_column
  )
  INTO learner_id
  USING
    trim(p_learner_first_name),
    trim(p_learner_last_name),
    trim(p_grade),
    trim(p_class),
    p_dob,
    trim(p_idnumber);

  IF learner_id IS NULL THEN
    EXECUTE format(
      'SELECT %1$I FROM public.learner WHERE %2$I = $1',
      learner_id_column,
      learner_idnumber_column
    )
    INTO learner_id
    USING trim(p_idnumber);
  END IF;

  IF learner_id IS NULL THEN
    RETURN jsonb_build_object(
      'status', 'error',
      'message', 'Could not find or create the learner record.'
    );
  END IF;

  EXECUTE format(
    'INSERT INTO public.parent_learner (%1$I, %2$I, %3$I)
     VALUES ($1, $2, $3)
     ON CONFLICT (%1$I, %2$I) DO UPDATE SET %3$I = excluded.%3$I',
    link_parent_id_column,
    link_learner_id_column,
    link_relationship_column
  )
  USING parent_id, learner_id, relationship_name;

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

REVOKE ALL ON FUNCTION public.get_my_children() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_my_children() TO authenticated;

INSERT INTO storage.buckets (
  id,
  name,
  public,
  file_size_limit,
  allowed_mime_types
)
VALUES (
  'parent-avatars',
  'parent-avatars',
  false,
  5242880,
  ARRAY['image/jpeg', 'image/png', 'image/webp']
)
ON CONFLICT (id) DO UPDATE
SET
  public = false,
  file_size_limit = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

DROP POLICY IF EXISTS "Parents can read their own profile photos"
  ON storage.objects;
CREATE POLICY "Parents can read their own profile photos"
  ON storage.objects FOR SELECT TO authenticated
  USING (
    bucket_id = 'parent-avatars'
    AND (storage.foldername(name))[1] = (SELECT auth.uid()::text)
  );

DROP POLICY IF EXISTS "Parents can upload their own profile photos"
  ON storage.objects;
CREATE POLICY "Parents can upload their own profile photos"
  ON storage.objects FOR INSERT TO authenticated
  WITH CHECK (
    bucket_id = 'parent-avatars'
    AND (storage.foldername(name))[1] = (SELECT auth.uid()::text)
  );

DROP POLICY IF EXISTS "Parents can update their own profile photos"
  ON storage.objects;
CREATE POLICY "Parents can update their own profile photos"
  ON storage.objects FOR UPDATE TO authenticated
  USING (
    bucket_id = 'parent-avatars'
    AND (storage.foldername(name))[1] = (SELECT auth.uid()::text)
  )
  WITH CHECK (
    bucket_id = 'parent-avatars'
    AND (storage.foldername(name))[1] = (SELECT auth.uid()::text)
  );

DROP POLICY IF EXISTS "Parents can delete their own profile photos"
  ON storage.objects;
CREATE POLICY "Parents can delete their own profile photos"
  ON storage.objects FOR DELETE TO authenticated
  USING (
    bucket_id = 'parent-avatars'
    AND (storage.foldername(name))[1] = (SELECT auth.uid()::text)
  );

NOTIFY pgrst, 'reload schema';
