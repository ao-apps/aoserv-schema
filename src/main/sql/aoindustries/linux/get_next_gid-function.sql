/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

CREATE OR REPLACE FUNCTION linux.get_next_gid (_ao_server integer)
RETURNS linux."LinuxId" AS $$
DECLARE
  _min_gid  CONSTANT linux."LinuxId" := (SELECT "gidMin" FROM linux."Server" WHERE server = _ao_server);
  _max_gid  CONSTANT linux."LinuxId" := (SELECT "gidMax" FROM linux."Server" WHERE server = _ao_server);
  _last_gid CONSTANT linux."LinuxId" := coalesce(
    (SELECT "lastGid" FROM linux."Server" WHERE server = _ao_server FOR UPDATE),
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
      SELECT lsg.gid FROM linux."GroupServer" lsg WHERE
        lsg.ao_server = _ao_server
        AND lsg.gid = _gid
    ) THEN
      UPDATE linux."Server" SET "lastGid" = _gid WHERE server = _ao_server;
      RETURN _gid;
    END IF;
    EXIT WHEN _gid = _last_gid;
  END LOOP;
  RAISE EXCEPTION 'No available gid found for server: %', _ao_server;
END;
$$ LANGUAGE plpgsql
VOLATILE
RETURNS NULL ON NULL INPUT;

COMMENT ON FUNCTION linux.get_next_gid (integer) IS 'Gets the next available GID in the range minGid through maxGid, starting the
search at lastGid + 1 (or minGid when lastGid is null).

Updates lastGid to the GID located.

Raises an exception when no GID can be allocated.';

CREATE OR REPLACE FUNCTION linux.get_next_gid (_ao_server text)
RETURNS linux."LinuxId" AS $$
  SELECT linux.get_next_gid(
    (SELECT server FROM linux."Server" where hostname = _ao_server)
  );
$$ LANGUAGE 'sql'
VOLATILE
RETURNS NULL ON NULL INPUT;

COMMENT ON FUNCTION linux.get_next_gid (text) IS 'Resolves the server id from hostname and calls linux.get_next_gid(integer).';
