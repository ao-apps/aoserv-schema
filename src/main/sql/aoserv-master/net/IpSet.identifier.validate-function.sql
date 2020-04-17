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

/*
Checks an ipset identifier.

Returns NULL when valid.
Returns a description when invalid.

ipset has maximum name length of 31.
Be safe by only allowing specific characters, even though ipset probably allows many more, we'll be shell-safe.
 */
CREATE OR REPLACE FUNCTION net."IpSet.identifier.validate" (identifier text)
RETURNS text AS $$
BEGIN
  IF identifier IS NULL THEN
    RETURN 'IpSet.identifier may not be null';
  END IF;
  IF NOT LENGTH(identifier) BETWEEN 1 AND 31 THEN
    RETURN 'IpSet.identifier must have between 1 and 31 characters: ''' || identifier || '''';
  END IF;
  IF identifier !~ E'^[a-zA-Z0-9_]' THEN
    RETURN 'IpSet.identifier may only start with a-z, A-Z, 0-9, or _: ''' || identifier || '''';
  END IF;
  IF identifier !~ E'^.[a-zA-Z0-9_\.-]*$' THEN
    RETURN 'IpSet.identifier may only contain a-z, A-Z, 0-9, ''.'', _, or -: ''' || identifier || '''';
  END IF;
  -- All is OK
  RETURN null;
END;
$$ LANGUAGE plpgsql
IMMUTABLE;
