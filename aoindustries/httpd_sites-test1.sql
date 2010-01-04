COPY httpd_sites (pkey, ao_server, site_name, list_first, accounting, linux_account, linux_group, server_admin, disable_log, is_manual, awstats_skip_files) FROM stdin;
2	2	disabled	f	AOINDUSTRIES	76	128	webmaster@aoindustries.com	\N	t	\N
\.
SELECT setval ('"httpd_sites_pkey_seq"', 3, true);
