COPY business_servers (pkey, accounting, server, is_default, can_control_apache, can_control_cron, can_control_mysql, can_control_postgresql, can_control_xfs, can_control_xvfb) FROM stdin;
1	TEST	2	t	f	f	f	f	f	f
2	NMW	2	t	f	f	f	f	f	f
3	AOINDUSTRIES	2	t	t	t	t	t	t	t
\.
SELECT setval ('"business_servers_pkey_seq"', 6, true);
