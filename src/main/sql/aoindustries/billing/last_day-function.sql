-- From http://wiki.postgresql.org/wiki/Date_LastDay
CREATE OR REPLACE FUNCTION billing.last_day(date)
RETURNS date AS
$$
  SELECT (date_trunc('MONTH', $1) + INTERVAL '1 MONTH - 1 day')::date;
$$ LANGUAGE 'sql' IMMUTABLE STRICT;
