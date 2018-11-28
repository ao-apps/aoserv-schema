CREATE DOMAIN "java.util"."Calendar.DAY_OF_WEEK" AS smallint
  CHECK (value >= 1 and value <= 7);
COMMENT ON DOMAIN "java.util"."Calendar.DAY_OF_WEEK" IS
'Matches class java.util.Calendar constants for DAY_OF_WEEK

1 : Calendar.SUNDAY
2 : Calendar.MONDAY
3 : Calendar.TUESDAY
4 : Calendar.WEDNESDAY
5 : Calendar.THURSDAY
6 : Calendar.FRIDAY
7 : Calendar.SATURDAY';
