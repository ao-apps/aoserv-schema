/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2011, 2013, 2017, 2018, 2019, 2020, 2021  AO Industries, Inc.
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

COPY distribution."SoftwareVersion" FROM stdin;
3376	jakarta-tomcat	8.5.0	2018-07-27 04:12:22.854095+00	orion	70
3377	jakarta-tomcat	9.0.0	2018-07-27 08:32:07.071927+00	orion	70
3378	jdk	10.0.0	2018-07-29 05:50:40.592101+00	orion	70
3379	jdk	11.0.0	2018-10-29 03:07:38.983226+00	orion	70
3315	postgresql	7.1.3	2008-12-18 23:46:24.432728	orion	67
3316	postgresql	7.2.8	2008-12-19 00:00:23.724925	orion	67
3317	postgresql	7.3.21	2008-12-18 23:46:53.531062	orion	67
3296	postgresql	8.1.23	2011-09-18 13:56:53.494936-05	orion	67
3298	postgresql	8.3.23	2013-11-22 17:14:46.96522-06	orion	67
3342	postgresql	9.2.20	2017-02-24 09:03:40.109049-06	orion	67
3346	postgresql	9.4.11	2017-02-24 11:48:37.250992-06	orion	67
3318	MySQL	4.0.27-max	2008-12-19 03:52:27.012693	orion	67
3319	MySQL	4.1.22	2008-12-19 09:52:33.793097+00	orion	67
3321	MySQL	5.0.96	2013-11-22 21:39:09.371325+00	orion	67
3323	MySQL	5.1.73	2013-12-04 21:55:23.219823+00	orion	67
3341	MySQL	5.6.35	2016-12-22 17:39:58.395523+00	orion	67
3348	MySQL	5.7.17	2016-12-22 21:24:15.737059+00	orion	67
3354	MySQL	5.0.96	2017-04-03 04:06:08.929567+00	orion	70
3355	MySQL	5.1.73	2017-04-03 04:06:17.099881+00	orion	70
3356	MySQL	5.6.35	2017-04-03 04:06:23.495491+00	orion	70
3357	MySQL	5.7.17	2017-04-03 04:06:29.419632+00	orion	70
3372	MySQL	8.0.0	2018-07-15 19:32:37.066566+00	orion	70
\.

BEGIN;
-- Apache Ant
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3368, 'ant', '1.6.2', '2017-07-11 00:40:13.56732+00', 'orion', 67);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3367, 'ant', '1.10.5', '2018-07-16 21:38:22.176268+00', 'orion', 70);
-- Apache Maven
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3381, 'maven', '3.6.0', '2018-12-07 05:40:12.053229+00', 'orion', 70);
-- Apache Tomcat
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3395, 'jakarta-tomcat', '10.0.0', '2021-03-21 09:22:46.883379+00', 'orion', 70);
-- Java
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3385, 'jdk', '1.7.0.0', '2019-11-16 20:37:45.739586+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3386, 'jdk', '1.8.0.0', '2019-11-16 20:37:45.739586+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3387, 'jdk', '11.0.0', '2019-11-16 20:37:45.739586+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3383, 'jdk', '12.0.0', '2019-04-09 00:24:38.682429+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3384, 'jdk', '13.0.0', '2019-09-24 23:58:14.42649+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3390, 'jdk', '14.0.0', '2020-03-22 11:28:28.466377+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3391, 'jdk', '15.0.0', '2020-11-17 04:40:42.695192+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3394, 'jdk', '16.0.0', '2021-03-20 12:58:12.920187+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3396, 'jdk', '17.0.0', '2021-10-16 17:59:40.187861+00', 'orion', 70);
-- PHP
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  1618, 'php', '4.4.2', '2006-02-25 13:58:33.297188-05', 'orion', 14);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  2418, 'php', '5.1.4', '2006-05-16 20:47:00-05', 'orion', 14);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3242, 'php', '4.4.4', '2006-10-12 18:50:00-05', 'orion', 45);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3243, 'php', '5.1.6', '2006-10-12 18:58:00-05', 'orion', 45);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3373, 'php', '7.0.0', '2018-07-17 06:22:41.987077+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3374, 'php', '7.1.0', '2018-07-17 11:34:17.801647+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3375, 'php', '7.2.0', '2018-07-17 12:53:16.84715+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3382, 'php', '7.3.0', '2018-12-09 05:40:46.777443+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3389, 'php', '7.4.0', '2020-01-21 04:27:57.932083+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3393, 'php', '8.0.0', '2020-12-07 21:07:57.757723+00', 'orion', 70);
-- PostgreSQL
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3351, 'postgresql', '8.3.23', '2017-03-30 20:22:57.8199-05', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3352, 'postgresql', '9.2.20', '2017-03-30 20:22:57.8199-05', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3353, 'postgresql', '9.4.11', '2017-03-30 20:23:10.757269-05', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3369, 'postgresql', '9.5.0', '2018-07-14 22:26:03.10491+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3370, 'postgresql', '9.6.0', '2018-07-15 05:34:17.323549+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3371, 'postgresql', '10.0', '2018-07-15 07:56:07.192482+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3380, 'postgresql', '11.0', '2018-11-07 07:21:03.741589+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3388, 'postgresql', '12.0', '2019-11-26 21:29:35.682642+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3392, 'postgresql', '13.0', '2020-11-21 04:39:42.354206+00', 'orion', 70);
INSERT INTO distribution."SoftwareVersion" (id, "name", version, updated, owner, operating_system_version) VALUES (
  3397, 'postgresql', '14.0', '2021-10-23 21:11:03.175021+00', 'orion', 70);
COMMIT;

SELECT setval ('distribution."SoftwareVersion_id_seq"', 3398, false);
