COPY httpd_sites (pkey, ao_server, "name", list_first, package, linux_account, linux_group, server_admin, content_src, disable_log, is_manual, awstats_skip_files) FROM stdin;
2	2	disabled	f	AOINDUSTRIES	aoadmin	aoadmin	webmaster@aoindustries.com	\N	\N	t	\N
\.
SELECT setval ('httpd.httpd_sites_pkey_seq', 3, true);
