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

COPY postgresql."User" (username, "createdb", trace, super, catupd, disable_log) FROM stdin;
postgres	t	t	t	t	\N
aoadmin	f	f	f	f	\N
aoweb_app	f	f	f	f	\N
aoserv_app	f	f	f	f	\N
admin_app	f	f	f	f	\N
adminprod	f	f	f	f	\N
edrugstore_app	f	f	f	f	\N
epharmaprod_app	f	f	f	f	\N
affiliates_app	f	f	f	f	\N
privatecart_app	f	f	f	f	\N
ptms_app	f	f	f	f	\N
danshome	f	f	f	f	\N
danshome_app	f	f	f	f	\N
rss_app	f	f	f	f	\N
session_admin	f	f	f	f	\N
\.
