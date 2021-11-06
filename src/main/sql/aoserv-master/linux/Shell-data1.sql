/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2010, 2013, 2018, 2020, 2021  AO Industries, Inc.
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

COPY linux."Shell" FROM stdin;
/bin/bash	t	f
/bin/false	f	t
/bin/ksh	t	f
/bin/sh	t	f
/bin/sync	f	t
/bin/tcsh	t	f
/sbin/halt	f	t
/sbin/nologin	f	t
/sbin/shutdown	f	t
/usr/bin/ftponly	f	f
/usr/bin/ftppasswd	f	f
/usr/bin/passwd	f	f
\.

BEGIN;
INSERT INTO linux."Shell" VALUES ('/usr/bin/git-shell', true, false);
COMMIT;
