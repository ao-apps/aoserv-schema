/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2026  AO Industries, Inc.
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

-- When there is at least one actively signing DkimKey for a server, must have opendkim bind.
-- opendkim bind may existing without any DkimKey, however, which would be running in verification-only mode.
CREATE OR REPLACE FUNCTION email."DkimKey_server_has_opendkim_bind"() RETURNS trigger AS $$
  DECLARE
    missing_keys TEXT;
  BEGIN
    -- Build comma-separated list of DkimKey IDs (or domain/selector) missing opendkim bind
    SELECT string_agg(dk.id::text || ':' || dk.selector || '@' || ed."domain", ', ')
    INTO missing_keys
    FROM email."DkimKey" dk
    INNER JOIN email."Domain" ed ON dk."domain" = ed.id
    LEFT JOIN net."Bind" nb ON ed.ao_server = nb.server
                               AND nb.app_protocol = 'opendkim'
    WHERE dk.status='signing' AND nb.server IS NULL;

    IF missing_keys IS NOT NULL THEN
        RAISE EXCEPTION 'DkimKeys missing opendkim bind: %', missing_keys;
    END IF;
    RETURN NULL;
  END;
$$ LANGUAGE plpgsql;

-- DROP TRIGGER "DkimKey_server_has_opendkim_bind" ON email."DkimKey";
-- PostgreSQL 14: CREATE OR REPLACE TRIGGER
CREATE CONSTRAINT TRIGGER "DkimKey_server_has_opendkim_bind"
AFTER INSERT OR UPDATE OR DELETE ON email."DkimKey"
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE PROCEDURE email."DkimKey_server_has_opendkim_bind"();

-- Note: An additional trigger is also created in net/Bind-trigger.sql
