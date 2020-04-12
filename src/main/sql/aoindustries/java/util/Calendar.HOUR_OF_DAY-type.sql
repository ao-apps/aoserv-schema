CREATE DOMAIN "java.util"."Calendar.HOUR_OF_DAY" AS smallint
  CHECK (value >= 0 and value <= 23);
COMMENT ON DOMAIN "java.util"."Calendar.HOUR_OF_DAY" IS
'Matches valid values for java.util.Calendar.HOUR_OF_DAY';
