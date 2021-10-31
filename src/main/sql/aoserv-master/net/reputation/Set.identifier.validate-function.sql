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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

/*
Checks a reputation identifier.

Returns NULL when valid.
Returns a description when invalid.

ipset has maximum name length of 31, and we prefix four characters, leaving 27 characters max.
  Prefixes:
    Set:
      character 0: 'R': Reputation
      character 1: 'G': Good,      'B': Bad
      character 2: 'U': Uncertain, 'D': Definite, 'N': Network
      character 3: '_': Separator, 'N': New list (for loading while old copy active)
    IpSet:
      character 0: 'I': IP Set
      character 1: 'H': Hosts, 'N': Networks, 'U': Union (rules should normally use the union)
      character 2: '_': Reserved
      character 3: '_': Separator, 'N': New list (for loading while old copy active)
 */
CREATE OR REPLACE FUNCTION "net.reputation"."Set.identifier.validate" (identifier text)
RETURNS text AS $$
DECLARE
  _validate_ipset_result text := (SELECT net."IpSet.identifier.validate"(identifier));
BEGIN
  IF NOT LENGTH(identifier) BETWEEN 1 AND 31 THEN
    RETURN 'Set.identifier must have between 1 and 27 characters: ''' || identifier || '''';
  END IF;
  IF _validate_ipset_result IS NOT NULL THEN
    RETURN _validate_ipset_result;
  END IF;
  -- All is OK
  RETURN null;
END;
$$ LANGUAGE plpgsql
IMMUTABLE;
