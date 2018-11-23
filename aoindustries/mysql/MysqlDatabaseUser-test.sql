COPY mysql."MysqlDatabaseUser" FROM stdin;
14	40	40	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f	f	f
\.
SELECT setval ('mysql."MysqlDatabaseUser_pkey_seq"', 15, true);
