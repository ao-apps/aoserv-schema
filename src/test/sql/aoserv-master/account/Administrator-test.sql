/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

COPY account."Administrator" (username, "password", "name", title, birthday, is_preferred, private, created, work_phone, home_phone, cell_phone, fax, email, address1, address2, city, state, country, zip, disable_log, can_switch_users) FROM stdin;
test_svr	mc9CLxr1kGC7w	test.aoindustries.com	\N	\N	f	t	2004-12-16 22:14:07.216106-06	251.607.9556	\N	\N	\N	support@aoindustries.com	\N	\N	\N	\N	\N	\N	\N	f
aoweb_app	z2doQat3LMDKU	AOWeb Application Account	\N	\N	f	t	2004-06-27 18:09:23.196678-05	251.607.9556	\N	\N	\N	support@aoindustries.com	\N	\N	\N	\N	\N	\N	\N	f
orion	HefOiftx1Rt5w	Dan Armstrong	President	1976-01-09	t	t	2004-06-27 16:34:03.096862-05	251.607.9556	251.661.6265	205.454.2556	251.607.9557	dan@aoindustries.com	2200 Dogwood Ct N	\N	Mobile	AL	US	3693	\N	t
testuser	Ahr9Zgk68Rj5U	Test User	\N	\N	f	t	2004-11-28 19:15:01.922714-06	(123)456-7890	\N	\N	\N	test@aoindustries.com	\N	\N	\N	\N	\N	\N	\N	f
\.
