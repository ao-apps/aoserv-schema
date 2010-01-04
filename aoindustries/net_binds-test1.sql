begin;
COPY net_binds (pkey, accounting, server, business_server, ip_address, port, net_protocol, app_protocol, open_firewall, monitoring_enabled) FROM stdin;
1	AOINDUSTRIES	2	3	1	3306	tcp	MySQL	t	t
2	AOINDUSTRIES	2	3	1	3307	tcp	MySQL	t	t
15	AOINDUSTRIES	2	3	1	5433	tcp	PostgreSQL	f	t
16	AOINDUSTRIES	2	3	5	20	tcp	FTP-DATA	t	f
17	AOINDUSTRIES	2	3	5	21	tcp	FTP	t	t
18	AOINDUSTRIES	2	3	5	22	tcp	SSH	t	t
19	AOINDUSTRIES	2	3	5	23	tcp	Telnet	t	t
20	AOINDUSTRIES	2	3	5	25	tcp	SMTP	t	t
21	AOINDUSTRIES	2	3	5	587	tcp	submission	t	t
22	AOINDUSTRIES	2	3	5	80	tcp	HTTP	t	t
23	AOINDUSTRIES	2	3	5	110	tcp	POP3	t	t
24	AOINDUSTRIES	2	3	5	143	tcp	IMAP2	t	t
25	AOINDUSTRIES	2	3	5	443	tcp	HTTPS	t	t
26	AOINDUSTRIES	2	3	1	1020	tcp	aoserv-daemon	f	t
27	AOINDUSTRIES	2	3	5	993	tcp	SIMAP	t	t
28	AOINDUSTRIES	2	3	5	995	tcp	SPOP3	t	t
43	AOINDUSTRIES	2	3	5	10000	tcp	user	f	f
44	AOINDUSTRIES	2	3	5	10001	tcp	user	f	f
45	AOINDUSTRIES	2	3	5	10002	tcp	user	f	f
46	AOINDUSTRIES	2	3	5	10003	tcp	user	f	f
47	AOINDUSTRIES	2	3	5	10004	tcp	user	f	f
48	AOINDUSTRIES	2	3	5	10005	tcp	user	f	f
4	AOINDUSTRIES	2	3	5	5900	tcp	RFB	t	t
\.
-- sieve
insert into net_binds values(
  3,
  'AOINDUSTRIES',
  2,
  3,
  5,
  2000,
  'tcp',
  'sieve',
  false,
  true
);
SELECT setval ('"net_binds_pkey_seq"', 40, true);
commit;
