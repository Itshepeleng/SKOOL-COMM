CREATE OR REPLACE FUNCTION public.get_my_learner_attendance(p_learner_id integer)
RETURNS TABLE (
  attendanceid integer,
  attendance_date date,
  status text
)
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = ''
AS $$
BEGIN
  IF auth.uid() IS NULL OR NOT EXISTS (
    SELECT 1
    FROM public.parent AS parent
    JOIN public.parent_learner AS parent_learner
      ON parent_learner."ParentID" = parent."ParentID"
    WHERE parent."AuthUserID" = auth.uid()
      AND parent_learner."LearnerID" = p_learner_id
  ) THEN
    RAISE EXCEPTION 'You are not authorized to view this learner.'
      USING ERRCODE = '42501';
  END IF;

  RETURN QUERY
  SELECT attendance.attendanceid, attendance.date, attendance.status::text
  FROM public.attendance AS attendance
  WHERE attendance.learnerid = p_learner_id
  ORDER BY attendance.date DESC, attendance.attendanceid DESC;
END;
$$;

CREATE OR REPLACE FUNCTION public.get_my_learner_behavioural_points(
  p_learner_id integer
)
RETURNS TABLE (
  pointid integer,
  offencecode text,
  level integer,
  offencename text,
  points integer,
  reason text,
  daterecorded timestamp,
  teacher_name text,
  teacher_initials text
)
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = ''
AS $$
BEGIN
  IF auth.uid() IS NULL OR NOT EXISTS (
    SELECT 1
    FROM public.parent AS parent
    JOIN public.parent_learner AS parent_learner
      ON parent_learner."ParentID" = parent."ParentID"
    WHERE parent."AuthUserID" = auth.uid()
      AND parent_learner."LearnerID" = p_learner_id
  ) THEN
    RAISE EXCEPTION 'You are not authorized to view this learner.'
      USING ERRCODE = '42501';
  END IF;

  RETURN QUERY
  SELECT
    behavioural_point.pointid,
    behavioural_point.offencecode::text,
    behavioural_point.level,
    behavioural_point.offencename::text,
    behavioural_point.points,
    behavioural_point.reason::text,
    behavioural_point.daterecorded::timestamp,
    coalesce(
      nullif(trim(concat_ws(' ', staff.first_name, staff.last_name)), ''),
      'School staff'
    ),
    concat(
      coalesce(left(trim(staff.first_name), 1), ''),
      coalesce(left(trim(staff.last_name), 1), '')
    )
  FROM public.behavioural_points AS behavioural_point
  LEFT JOIN public.staff AS staff
    ON staff.staffid = behavioural_point.issuedby
  WHERE behavioural_point.learnerid = p_learner_id
  ORDER BY behavioural_point.daterecorded DESC, behavioural_point.pointid DESC;
END;
$$;

REVOKE ALL ON FUNCTION public.get_my_learner_attendance(integer) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_my_learner_attendance(integer) TO authenticated;

REVOKE ALL ON FUNCTION public.get_my_learner_behavioural_points(integer) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_my_learner_behavioural_points(integer)
  TO authenticated;
