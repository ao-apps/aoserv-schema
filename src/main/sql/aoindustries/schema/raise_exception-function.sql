-- See https://www.postgresql.org/message-id/CAFj8pRC3aOx7%2BPTXAdZtx%3Dj897sAF1UHUVk_zWTcFOZdysVYoA@mail.gmail.com
CREATE OR REPLACE FUNCTION "schema".raise_exception(text)
RETURNS text AS $$
BEGIN
  RAISE EXCEPTION '%', $1;
END;
$$ LANGUAGE plpgsql;
