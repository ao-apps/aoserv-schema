COPY business_servers (pkey, accounting, server, is_default, can_vnc_console) FROM stdin;
1	TEST	135	t	f
2	NMW	135	t	f
3	AOINDUSTRIES	135	t	t
\.
SELECT setval ('"business_servers_pkey_seq"', 4, true);
