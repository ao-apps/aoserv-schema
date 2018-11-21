-- Gets the portion of the current month to the provided moment in time
CREATE OR REPLACE FUNCTION billing.month_portion(timestamp with time zone)
RETURNS double precision AS
$$
  SELECT
    (
      extract('epoch' from $1)
      - extract('epoch' from billing.first_day($1::date))
    ) / (
      extract('epoch' from billing.first_day(($1 + interval '1 month')::date))
      - extract('epoch' from billing.first_day($1::date))
    )
  ;
$$ LANGUAGE 'sql' IMMUTABLE STRICT;
