COPY mysql_users FROM stdin;
2	root	1	127.0.0.1	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	\N	\N	0	0	0	0
3	root	2	127.0.0.1	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	\N	\N	0	0	0	0
40	newmediaworks	1	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	\N	\N	0	0	0	0
\.
SELECT setval ('"mysql_users_pkey_seq"', 41, true);
