/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2010, 2013, 2018, 2020, 2021, 2024  AO Industries, Inc.
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

BEGIN;
INSERT INTO linux."Shell" VALUES ('/bin/bash',           true, false);
INSERT INTO linux."Shell" VALUES ('/bin/false',         false, false);
INSERT INTO linux."Shell" VALUES ('/bin/ksh',            true, false);
INSERT INTO linux."Shell" VALUES ('/bin/sh',             true, false);
INSERT INTO linux."Shell" VALUES ('/bin/sync',          false,  true);
INSERT INTO linux."Shell" VALUES ('/bin/tcsh',           true, false);
INSERT INTO linux."Shell" VALUES ('/sbin/halt',         false,  true);
INSERT INTO linux."Shell" VALUES ('/sbin/nologin',      false, false);
INSERT INTO linux."Shell" VALUES ('/sbin/shutdown',     false,  true);
INSERT INTO linux."Shell" VALUES ('/usr/bin/ftponly',   false, false);
INSERT INTO linux."Shell" VALUES ('/usr/bin/ftppasswd', false, false);
INSERT INTO linux."Shell" VALUES ('/usr/bin/git-shell',  true, false);
INSERT INTO linux."Shell" VALUES ('/usr/bin/passwd',    false, false);
INSERT INTO linux."Shell" VALUES ('/usr/sbin/nologin',  false,  true);
COMMIT;
