/*
Gets the next available GID in the range minGid through maxGid, starting the
search at lastGid + 1 (or minGid when lastGid is null).

Updates lastGid to the GID located.

Raises an exception when no GID can be allocated.
 */
CREATE OR REPLACE FUNCTION linux.get_next_gid (_ao_server integer)
RETURNS linux."LinuxId" AS $$
DECLARE
  _min_gid  CONSTANT linux."LinuxId" := (SELECT "gidMin" FROM server."AoServer" WHERE server = _ao_server);
  _max_gid  CONSTANT linux."LinuxId" := (SELECT "gidMax" FROM server."AoServer" WHERE server = _ao_server);
  _last_gid CONSTANT linux."LinuxId" := coalesce(
    (SELECT "lastGid" FROM server."AoServer" WHERE server = _ao_server),
    _max_gid
  );
  _gid linux."LinuxId" := _last_gid;
BEGIN
  IF _ao_server IS NULL THEN
    RETURN null;
  END IF;
  -- This iterative approach could be faster with crafty selects, but this is
  -- not performance sensitive, so we're just going for the simplest approach
  LOOP
    _gid := _gid + 1;
    IF _gid > _max_gid THEN
      _gid := _min_gid;
    END IF;
    IF NOT EXISTS (
      SELECT lsg.gid FROM linux_server_groups lsg WHERE
        lsg.ao_server = _ao_server
        AND lsg.gid = _gid
    ) THEN
      UPDATE server."AoServer" SET "lastGid" = _gid WHERE server = _ao_server;
      RETURN _gid;
    END IF;
    EXIT WHEN _gid = _last_gid;
  END LOOP;
  RAISE EXCEPTION 'No available gid found for server: %', _ao_server;
END;
$$ LANGUAGE plpgsql
VOLATILE
RETURNS NULL ON NULL INPUT;

CREATE OR REPLACE FUNCTION linux.get_next_gid (_ao_server text)
RETURNS linux."LinuxId" AS $$
  SELECT linux.get_next_gid(
    (SELECT server FROM server."AoServer" where hostname = _ao_server)
  );
$$ LANGUAGE 'sql'
VOLATILE
RETURNS NULL ON NULL INPUT;
