/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2018, 2020, 2021  AO Industries, Inc.
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
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('JBoss', 'Apache');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('JBoss', 'Java');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('JBoss', 'PostgreSQL');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('MySQL', 'MySQL');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('PostGIS', 'PostgreSQL');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('ant', 'Java');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('awstats', 'Apache');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('awstats', 'PERL');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('jakarta-tomcat', 'Apache');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('jakarta-tomcat', 'Java');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('jdk', 'Java');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('maven', 'Java');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('php', 'Apache');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('php', 'Encryption');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('php', 'MySQL');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('php', 'PHP');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('php', 'PostgreSQL');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('php', 'XML');
INSERT INTO distribution."SoftwareCategorization" ("name", "class") VALUES ('postgresql', 'PostgreSQL');
COMMIT;
