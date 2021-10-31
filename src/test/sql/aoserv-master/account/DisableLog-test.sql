/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

COPY account."DisableLog" (id, "time", accounting, disabled_by, disable_reason) FROM stdin;
1	2004-07-02 02:22:29.03074-05	AOINDUSTRIES	orion	\N
2	2004-07-02 03:11:44.570874-05	AOINDUSTRIES	orion	\N
3	2004-07-02 04:36:19.754471-05	AOINDUSTRIES	orion	\N
4	2004-07-02 05:00:48.685152-05	AOINDUSTRIES	orion	\N
5	2004-07-02 05:01:12.153829-05	AOINDUSTRIES	orion	\N
6	2004-07-02 05:18:19.958923-05	AOINDUSTRIES	orion	\N
7	2004-07-02 05:23:07.153231-05	AOINDUSTRIES	orion	\N
8	2004-07-02 05:40:31.821584-05	AOINDUSTRIES	orion	\N
9	2004-07-02 11:10:34.748487-05	AOINDUSTRIES	orion	\N
10	2004-07-02 12:28:12.010368-05	AOINDUSTRIES	orion	\N
11	2004-07-02 12:31:56.531809-05	AOINDUSTRIES	orion	\N
12	2005-06-01 14:22:56.771078-05	TEST	orion	Test disable.
\.
SELECT setval ('account."DisableLog_id_seq"', 12, true);
