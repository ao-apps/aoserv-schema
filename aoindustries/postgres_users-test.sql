COPY postgres_users (username, "createdb", trace, super, catupd, disable_log) FROM stdin;
postgres	t	t	t	t	\N
aoadmin	f	f	f	f	\N
aoweb_app	f	f	f	f	\N
aoserv_app	f	f	f	f	\N
edrugstore	f	f	f	f	\N
edrugstore_app	f	f	f	f	\N
epharmaprod_app	f	f	f	f	\N
affiliates_app	f	f	f	f	\N
privatecart_app	f	f	f	f	\N
ptms_app	f	f	f	f	\N
danshome	f	f	f	f	\N
danshome_app	f	f	f	f	\N
\.
