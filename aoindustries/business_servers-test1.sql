COPY business_servers (pkey, accounting, server, is_default, can_vnc_console) FROM stdin;
1	TEST	2	t	f
2	NMW	2	t	f
3	AOINDUSTRIES	2	t	t
\.
SELECT setval ('"business_servers_pkey_seq"', 4, true);
