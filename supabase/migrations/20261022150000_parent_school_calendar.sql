CREATE OR REPLACE FUNCTION public.get_school_calendar_events()
RETURNS TABLE (
  id integer,
  kind text,
  title text,
  description text,
  start_date timestamp without time zone,
  end_date timestamp without time zone,
  location text
)
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = ''
AS $$
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'You must be signed in to view school calendar events.'
      USING ERRCODE = '28000';
  END IF;

  RETURN QUERY
  SELECT calendar_item.id, calendar_item.kind, calendar_item.title,
         calendar_item.description, calendar_item.start_date,
         calendar_item.end_date, calendar_item.location
  FROM (
    SELECT
      event.eventid AS id,
      'event'::text AS kind,
      event.title::text AS title,
      coalesce(event.description, '')::text AS description,
      event.eventdate::timestamp without time zone AS start_date,
      event.eventdate::timestamp without time zone AS end_date,
      coalesce(event.location, '')::text AS location
    FROM public.event AS event

    UNION ALL

    SELECT
      year_plan.yearplanid,
      'yearplan'::text,
      year_plan.title::text,
      coalesce(year_plan.description, '')::text,
      year_plan.startdate::timestamp without time zone,
      year_plan.enddate::timestamp without time zone,
      ''::text
    FROM public.year_plan AS year_plan
  ) AS calendar_item
  ORDER BY calendar_item.start_date, calendar_item.title;
END;
$$;

REVOKE ALL ON FUNCTION public.get_school_calendar_events() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_school_calendar_events() TO authenticated;

NOTIFY pgrst, 'reload schema';
