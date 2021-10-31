/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2008, 2009, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

begin;
COPY net."Bind" (id, package, server, "ipAddress", port, net_protocol, app_protocol, open_firewall, monitoring_enabled) FROM stdin;
1	AOINDUSTRIES	2	1	3306	TCP	MySQL	t	t
2	AOINDUSTRIES	2	1	3307	TCP	MySQL	t	t
15	AOINDUSTRIES	2	1	5433	TCP	PostgreSQL	f	t
16	AOINDUSTRIES	2	5	20	TCP	FTP-DATA	t	f
17	AOINDUSTRIES	2	5	21	TCP	FTP	t	t
18	AOINDUSTRIES	2	5	22	TCP	SSH	t	t
19	AOINDUSTRIES	2	5	23	TCP	Telnet	t	t
20	AOINDUSTRIES	2	5	25	TCP	SMTP	t	t
21	AOINDUSTRIES	2	5	587	TCP	submission	t	t
22	AOINDUSTRIES	2	5	80	TCP	HTTP	t	t
23	AOINDUSTRIES	2	5	110	TCP	POP3	t	t
24	AOINDUSTRIES	2	5	143	TCP	IMAP2	t	t
25	AOINDUSTRIES	2	5	443	TCP	HTTPS	t	t
26	AOINDUSTRIES	2	1	1020	TCP	aoserv-daemon	f	t
27	AOINDUSTRIES	2	5	993	TCP	SIMAP	t	t
28	AOINDUSTRIES	2	5	995	TCP	SPOP3	t	t
43	AOINDUSTRIES	2	5	10000	TCP	user	f	f
44	AOINDUSTRIES	2	5	10001	TCP	user	f	f
45	AOINDUSTRIES	2	5	10002	TCP	user	f	f
46	AOINDUSTRIES	2	5	10003	TCP	user	f	f
47	AOINDUSTRIES	2	5	10004	TCP	user	f	f
48	AOINDUSTRIES	2	5	10005	TCP	user	f	f
4	AOINDUSTRIES	2	5	5900	TCP	RFB	t	t
\.
-- sieve
insert into net."Bind" values(
  3,
  'AOINDUSTRIES',
  2,
  5,
  2000,
  'TCP',
  'sieve',
  false,
  true
);
SELECT setval ('net."Bind_id_seq"', 40, true);
commit;
