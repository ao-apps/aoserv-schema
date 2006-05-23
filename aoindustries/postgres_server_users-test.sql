COPY postgres_server_users (pkey, username, postgres_server, disable_log, predisable_password) FROM stdin;
1	privatecart_app	2	\N	\N
2	ptms_app	2	\N	\N
3	postgres	2	\N	\N
4	aoadmin	2	\N	\N
5	aoserv_app	2	\N	\N
6	aoweb_app	2	\N	\N
7	edrugstore	2	\N	\N
8	edrugstore_app	2	\N	\N
9	epharmaprod_app	2	\N	\N
10	affiliates_app	2	\N	\N
12	danshome	2	\N	\N
13	danshome_app	2	\N	\N
14	privatecart_app	1	\N	\N
15	ptms_app	1	\N	\N
16	postgres	1	\N	\N
17	aoadmin	1	\N	\N
18	aoserv_app	1	\N	\N
19	aoweb_app	1	\N	\N
20	edrugstore	1	\N	\N
21	edrugstore_app	1	\N	\N
22	epharmaprod_app	1	\N	\N
23	affiliates_app	1	\N	\N
24	danshome	1	\N	\N
25	danshome_app	1	\N	\N
\.
SELECT setval ('"postgres_server_users_pkey_seq"', 25, true);
