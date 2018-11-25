/*
Checks an ipset identifier.

Returns NULL when valid.
Returns a description when invalid.

ipset has maximum name length of 31.
Be safe by only allowing specific characters, even though ipset probably allows many more, we'll be shell-safe.
 */
CREATE OR REPLACE FUNCTION net."validateIpSetIdentifier" (identifier text)
RETURNS text AS $$
BEGIN
  IF identifier IS NULL THEN
    RETURN 'Identifiers may not be null';
  END IF;
  IF NOT LENGTH(identifier) BETWEEN 1 AND 31 THEN
    RETURN 'Identifiers must have between 1 and 31 characters: ''' || identifier || '''';
  END IF;
  IF identifier !~ E'^[a-zA-Z0-9_]' THEN
    RETURN 'Identifiers may only start with a-z, A-Z, 0-9, or _: ''' || identifier || '''';
  END IF;
  IF identifier !~ E'^.[a-zA-Z0-9_\.-]*$' THEN
    RETURN 'Identifiers may only contain a-z, A-Z, 0-9, ''.'', _, or -: ''' || identifier || '''';
  END IF;
  -- All is OK
  RETURN null;
END;
$$ LANGUAGE plpgsql
IMMUTABLE;
