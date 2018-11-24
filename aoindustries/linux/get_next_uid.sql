CREATE OR REPLACE FUNCTION linux.get_next_uid (_ao_server integer)
RETURNS linux."LinuxId" AS $$
DECLARE
  _min_uid  CONSTANT linux."LinuxId" := (SELECT "uidMin" FROM server."AoServer" WHERE server = _ao_server);
  _max_uid  CONSTANT linux."LinuxId" := (SELECT "uidMax" FROM server."AoServer" WHERE server = _ao_server);
  _last_uid CONSTANT linux."LinuxId" := coalesce(
    (SELECT "lastUid" FROM server."AoServer" WHERE server = _ao_server),
    _max_uid
  );
  _uid linux."LinuxId" := _last_uid;
BEGIN
  IF _ao_server IS NULL THEN
    RETURN null;
  END IF;
  -- This iterative approach could be faster with crafty selects, but this is
  -- not performance sensitive, so we're just going for the simplest approach
  LOOP
    _uid := _uid + 1;
    IF _uid > _max_uid THEN
      _uid := _min_uid;
    END IF;
    IF NOT EXISTS (
      SELECT lsa.uid FROM linux_server_accounts lsa WHERE
        lsa.ao_server = _ao_server
        AND lsa.uid = _uid
    ) THEN
      UPDATE server."AoServer" SET "lastUid" = _uid WHERE server = _ao_server;
      RETURN _uid;
    END IF;
    EXIT WHEN _uid = _last_uid;
  END LOOP;
  RAISE EXCEPTION 'No available uid found for server: %', _ao_server;
END;
$$ LANGUAGE plpgsql
VOLATILE
RETURNS NULL ON NULL INPUT;

COMMENT ON FUNCTION linux.get_next_uid (integer) IS 'Gets the next available UID in the range minUid through maxUid, starting the
search at lastUid + 1 (or minUid when lastUid is null).

Updates lastUid to the UID located.

Raises an exception when no UID can be allocated.';

CREATE OR REPLACE FUNCTION linux.get_next_uid (_ao_server text)
RETURNS linux."LinuxId" AS $$
  SELECT linux.get_next_uid(
    (SELECT server FROM server."AoServer" where hostname = _ao_server)
  );
$$ LANGUAGE 'sql'
VOLATILE
RETURNS NULL ON NULL INPUT;

COMMENT ON FUNCTION linux.get_next_uid (text) IS 'Resolves the server id from hostname and calls linux.get_next_uid(integer).';
