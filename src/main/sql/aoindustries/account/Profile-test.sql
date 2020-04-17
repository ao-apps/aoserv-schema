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

COPY account."Profile" (id, accounting, priority, "name", private, phone, fax, address1, address2, city, "state", country, zip, send_invoice, created, billing_contact, billing_email, technical_contact, technical_email) FROM stdin;
1	AOINDUSTRIES	1	AO Industries, Inc.	t	(251) 607-9556	(251) 382-1197	7262 Bull Pen Cir	\N	Mobile	AL	US	36695	f	2004-11-28 22:36:06.407-06	Dan Armstrong	dan@aoindustries.com	Dan Armstrong	dan@aoindustries.com
2	TEST	1	Test	t	phone	\N	sadfsadf	\N	sdfasdf	\N	AF	\N	f	2005-05-24 05:25:32.575-05	sdfdsaf	yuki@yukisweb.com	sdfasdf	yuki@yukisweb.com
\.
