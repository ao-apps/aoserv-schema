COPY httpd_sites (pkey, ao_server, site_name, list_first, package, linux_account, linux_group, server_admin, content_src, config_backup_level, config_backup_retention, file_backup_level, file_backup_retention, ftp_backup_level, ftp_backup_retention, log_backup_level, log_backup_retention, disable_log, is_manual, awstats_skip_files) FROM stdin;
2	2	disabled	f	AOINDUSTRIES	aoadmin	aoadmin	webmaster@aoindustries.com	\N	1	7	1	7	1	7	1	7	\N	t	\N
3	3	disabled	f	AOINDUSTRIES	aoadmin	aoadmin	webmaster@aoindustries.com	\N	1	7	1	7	1	7	1	7	\N	t	\N
\.
SELECT setval ('"httpd_sites_pkey_seq"', 3, true);
