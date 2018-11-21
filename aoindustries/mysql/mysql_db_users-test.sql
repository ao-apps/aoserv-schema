COPY mysql_db_users FROM stdin;
14	40	40	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f	f	f
\.
SELECT setval ('mysql.mysql_db_users_pkey_seq', 15, true);
