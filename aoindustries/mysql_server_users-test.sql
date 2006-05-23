COPY mysql_server_users FROM stdin;
2	root	1	127.0.0.1	\N	\N	0	0	0	0
3	root	2	127.0.0.1	\N	\N	0	0	0	0
4	nathan	1	\N	\N	\N	0	0	0	0
5	mmhsql	1	\N	\N	\N	0	0	0	0
6	bchen	1	\N	\N	\N	0	0	0	0
7	calendar_mmh	1	\N	\N	\N	0	0	0	0
40	newmediaworks	1	\N	\N	\N	0	0	0	0
41	mmysql	1	\N	\N	\N	0	0	0	0
\.
SELECT setval ('"mysql_server_users_pkey_seq"', 41, true);
