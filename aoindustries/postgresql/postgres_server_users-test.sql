COPY postgres_server_users (pkey, username, postgres_server, disable_log, predisable_password) FROM stdin;
14	privatecart_app	1	\N	\N
15	ptms_app	1	\N	\N
16	postgres	1	\N	\N
17	aoadmin	1	\N	\N
18	aoserv_app	1	\N	\N
19	aoweb_app	1	\N	\N
21	edrugstore_app	1	\N	\N
22	epharmaprod_app	1	\N	\N
23	affiliates_app	1	\N	\N
24	danshome	1	\N	\N
25	danshome_app	1	\N	\N
26	admin_app	1	\N	\N
27	adminprod	1	\N	\N
28	rss_app	1	\N	\N
29	session_admin	1	\N	\N
\.
SELECT setval ('postgresql.postgres_server_users_pkey_seq', 29, true);
