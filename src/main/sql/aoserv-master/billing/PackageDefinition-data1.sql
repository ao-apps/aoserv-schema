/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2009, 2010, 2013, 2018, 2019, 2020, 2022  AO Industries, Inc.
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

COPY billing."PackageDefinition" FROM stdin;
21	AOINDUSTRIES	sysadmin	sysadmin	2005-04	System Administration	System Administration Service	USD	300.00	sysadmin	USD	200.00	sysadmin	t	t
31	AOINDUSTRIES	managed	p4	2005-04	P4 Server	Managed P4 Server	\N	\N	\N	USD	300.00	managed	t	t
32	AOINDUSTRIES	managed	xeon	2005-04	Xeon Server	Managed Xeon Server	\N	\N	\N	USD	400.00	managed	t	t
44	AOINDUSTRIES	reseller	top_level	2005-05	Reseller Top Level Account (Free)	Reseller Top Level Account	\N	\N	\N	USD	0.00	reseller	t	t
50	AOINDUSTRIES	virtual	developer_25	2005-05	Developer Package	Developer Virtual Hosting	\N	\N	\N	USD	25.00	virtual	f	t
81	AOINDUSTRIES	virtual	production_10	2005-05	Production Package	Production Virtual Hosting	\N	\N	\N	USD	10.00	virtual	f	t
4	AOINDUSTRIES	virtual	production	2005-04	Production Package	Production Virtual Hosting	\N	\N	\N	USD	50.00	virtual	t	t
6	AOINDUSTRIES	aoserv	daemon_license	2005-04	AOServ Daemon License	AOServ Daemon License	\N	\N	\N	USD	50.00	aoserv	t	t
7	AOINDUSTRIES	aoserv	master_license	2005-04	AOServ Master License	AOServ Master License	\N	\N	\N	USD	500.00	aoserv	t	t
96	AOINDUSTRIES	virtual	developer_free	2005-12	Developer Package	Developer Virtual Hosting	\N	\N	\N	USD	0.00	virtual	f	t
82	AOINDUSTRIES	virtual	production_25	2005-05	Production Package	Production Virtual Hosting	\N	\N	\N	USD	25.00	virtual	f	t
83	AOINDUSTRIES	virtual	developer_10	2005-05	Developer Package	Developer Virtual Hosting	\N	\N	\N	USD	10.00	virtual	f	t
3	AOINDUSTRIES	virtual	developer	2005-04	Developer Package	Developer Virtual Hosting	\N	\N	\N	USD	30.00	virtual	t	t
5	AOINDUSTRIES	virtual	premium	2005-06	Premium Package	Premium Virtual Hosting	\N	\N	\N	USD	100.00	virtual	t	t
87	AOINDUSTRIES	virtual	developer_yuki	2005-07	Developer Package (YUKI)	Developer Virtual Hosting (YUKI)	\N	\N	\N	USD	30.00	virtual	f	t
90	AOINDUSTRIES	virtual	production	2005-08	Production Package (Unlimited sites)	Production Virtual Hosting (Unlimited sites)	\N	\N	\N	USD	50.00	virtual	f	t
1	AOINDUSTRIES	virtual	personal	2005-04	Personal Package	Personal Virtual Hosting	\N	\N	\N	USD	10.00	virtual	f	t
2	AOINDUSTRIES	virtual	budget	2005-04	Budget Package	Budget Virtual Hosting	\N	\N	\N	USD	20.00	virtual	f	t
101	AOINDUSTRIES	dedicated	p4	2006-08	P4 Server with 2 GB RAM and 3ware RAID	Dedicated P4 Server with 2 GB RAM and 3ware RAID	\N	\N	\N	USD	160.00	dedicated	f	t
111	AOINDUSTRIES	dedicated	p4_old_1.5	2006-12	P4 Server 1.5 amps	Dedicated P4 Server<BR>\r\n1.5 amps peak	\N	\N	\N	USD	120.00	dedicated	f	t
100	AOINDUSTRIES	managed	p4_old	2006-08	P4 Server (Old hardware)	Managed P4 Server (Old hardware)	\N	\N	\N	USD	200.00	managed	f	t
107	AOINDUSTRIES	dedicated	p4 Ultimate Shopping Cart	2006-10	P4 Server  (ULTIMATE_SHOPPING_CART)	Dedicated P4 Server (ULTIMATE_SHOPPING_CART)	USD	250.00	dedicated	USD	195.00	dedicated	f	t
29	AOINDUSTRIES	dedicated	p4	2005-04	P4 Server	Dedicated P4 Server	\N	\N	\N	USD	100.00	dedicated	f	t
30	AOINDUSTRIES	dedicated	xeon	2005-04	Xeon Server	Dedicated Xeon Server	\N	\N	\N	USD	200.00	dedicated	f	t
114	AOINDUSTRIES	dedicated	xeon	2007_02	Xeon Server	Dedicated Xeon Server	\N	\N	\N	USD	250.00	dedicated	t	t
115	AOINDUSTRIES	managed	xeon	2005-04_temp_free	Xeon Server	Managed Xeon Server	\N	\N	\N	USD	0.00	managed	f	t
116	AOINDUSTRIES	virtual	production	2007-03	WIND	Production Virtual Hosting (WIND)	\N	\N	\N	USD	30.00	virtual	f	t
86	AOINDUSTRIES	managed	p4_newmediaworks	2007-04	2 x P4 Server	Two Managed P4 Servers	\N	\N	\N	USD	600.00	managed	f	t
45	AOINDUSTRIES	reseller	unlimited	2005-05	Unlimited Reseller (Free)	Unlimited Reseller	\N	\N	\N	USD	0.00	reseller	f	t
113	AOINDUSTRIES	dedicated	CoreDuo Server	2007-02	CoreDuo Server (1.2 amps)	CoreDuo Server (1.2 amps)	USD	250.00	dedicated	USD	150.00	dedicated	f	t
121	AOINDUSTRIES	dedicated	VDS Host Server	2007-04	Dual Quad-Core Xeon VDS Host Server	VDS Host Server is a server that is ideal for use with the Xen platform to\r\nprovide many guest VDS installations.	USD	1495.00	dedicated	USD	995.00	dedicated	f	f
119	AOINDUSTRIES	dedicated	CoreDuo Server	2007-05	CoreDuo Dedicated Server	CoreDuo Dedicated Server	USD	250.00	dedicated	USD	116.29	dedicated	t	t
80	AOINDUSTRIES	virtual	production_free	2005-05	Production Package (Free)	Production Virtual Hosting	\N	\N	\N	USD	0.00	virtual	f	t
\.
