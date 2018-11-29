CREATE OR REPLACE FUNCTION net."Host.reverseFqdn" (text)
RETURNS text AS $$
  SELECT array_to_string(
    net.array_reverse(
      string_to_array($1, '.')
    ),
    '.'
  );
$$ LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

COMMENT ON FUNCTION net."Host.reverseFqdn" (text) IS
'Takes a host/domain name and switches the order by labels split by periods (.)

$1  the host/domain name

returns a text with the name parts reversed';
