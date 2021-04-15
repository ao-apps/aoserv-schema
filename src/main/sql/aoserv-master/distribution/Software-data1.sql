/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2013, 2018, 2020, 2021  AO Industries, Inc.
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

BEGIN;
INSERT INTO distribution."Software" ("name") VALUES ('JBoss');
INSERT INTO distribution."Software" ("name") VALUES ('MySQL');
INSERT INTO distribution."Software" ("name") VALUES ('PostGIS');
INSERT INTO distribution."Software" ("name") VALUES ('ant');
INSERT INTO distribution."Software" ("name") VALUES ('awstats');
INSERT INTO distribution."Software" ("name") VALUES ('jakarta-tomcat');
INSERT INTO distribution."Software" ("name") VALUES ('jdk');
INSERT INTO distribution."Software" ("name") VALUES ('maven');
INSERT INTO distribution."Software" ("name") VALUES ('php');
INSERT INTO distribution."Software" ("name") VALUES ('postgresql');
INSERT INTO distribution."Software" ("name") VALUES ('tomcat-connectors');
COMMIT;
