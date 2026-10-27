-- Keep the text signature used by the app; PostgREST cannot disambiguate
-- both overloads when their argument names are identical.
DROP FUNCTION IF EXISTS public.register_parent_and_learner(
  uuid,
  character varying,
  character varying,
  character varying,
  character varying,
  character varying,
  character varying,
  character varying,
  date,
  character varying,
  character varying
);

NOTIFY pgrst, 'reload schema';
