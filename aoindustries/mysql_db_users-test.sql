COPY mysql_db_users FROM stdin;
1	7	4	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
2	7	5	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
3	8	4	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
4	9	5	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
5	9	4	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
6	6	6	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
7	10	5	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
8	6	4	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
9	10	4	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
10	11	4	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
11	12	4	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
12	5	4	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
13	4	7	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
14	40	40	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
15	42	41	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f
\.
SELECT setval ('"mysql_db_users_pkey_seq"', 15, true);
