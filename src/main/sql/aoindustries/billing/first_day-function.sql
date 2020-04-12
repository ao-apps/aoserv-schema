CREATE OR REPLACE FUNCTION billing.first_day(date)
RETURNS date AS
$$
  SELECT date_trunc('MONTH', $1)::date;
$$ LANGUAGE 'sql' IMMUTABLE STRICT;
