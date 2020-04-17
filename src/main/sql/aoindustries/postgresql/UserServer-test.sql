/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

COPY postgresql."UserServer" (id, username, postgres_server, disable_log, predisable_password) FROM stdin;
14	privatecart_app	1	\N	\N
15	ptms_app	1	\N	\N
16	postgres	1	\N	\N
17	aoadmin	1	\N	\N
18	aoserv_app	1	\N	\N
19	aoweb_app	1	\N	\N
21	edrugstore_app	1	\N	\N
22	epharmaprod_app	1	\N	\N
23	affiliates_app	1	\N	\N
24	danshome	1	\N	\N
25	danshome_app	1	\N	\N
26	admin_app	1	\N	\N
27	adminprod	1	\N	\N
28	rss_app	1	\N	\N
29	session_admin	1	\N	\N
\.
SELECT setval ('postgresql."UserServer_id_seq"', 29, true);
