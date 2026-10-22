CREATE OR REPLACE FUNCTION public.get_parent_announcements()
RETURNS TABLE (
  announcement_id integer,
  title text,
  content text,
  date_posted timestamptz,
  target_audience text
)
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = ''
AS $$
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'You must be signed in to view school announcements.'
      USING ERRCODE = '28000';
  END IF;

  RETURN QUERY
  WITH linked_grades AS (
    SELECT DISTINCT
      lower(regexp_replace(trim(child.grade), '^grade[[:space:]]*', ''))
        AS grade_value
    FROM public.get_my_children() AS child
  ),
  announcements AS (
    SELECT to_jsonb(announcement) AS data
    FROM public.announcement AS announcement
  ),
  announcement_values AS (
    SELECT
      coalesce(
        data ->> 'AnnouncementID',
        data ->> 'announcementid',
        data ->> 'announcement_id'
      )::integer AS announcement_id,
      coalesce(data ->> 'Title', data ->> 'title', '') AS title,
      coalesce(data ->> 'Content', data ->> 'content', '') AS content,
      coalesce(
        data ->> 'DatePosted',
        data ->> 'dateposted',
        data ->> 'date_posted'
      )::timestamptz AS date_posted,
      coalesce(
        data ->> 'TargetAudience',
        data ->> 'targetaudience',
        data ->> 'target_audience',
        ''
      ) AS target_audience
    FROM announcements
  )
  SELECT
    announcement.announcement_id,
    announcement.title,
    announcement.content,
    announcement.date_posted,
    announcement.target_audience
  FROM announcement_values AS announcement
  WHERE lower(trim(announcement.target_audience)) = 'all parents'
     OR EXISTS (
       SELECT 1
       FROM linked_grades AS linked_grade
       WHERE lower(
         regexp_replace(
           trim(announcement.target_audience),
           '^grade[[:space:]]*',
           ''
         )
       ) = linked_grade.grade_value
     )
  ORDER BY announcement.date_posted DESC, announcement.announcement_id DESC;
END;
$$;

REVOKE ALL ON FUNCTION public.get_parent_announcements() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_parent_announcements() TO authenticated;

NOTIFY pgrst, 'reload schema';
