COPY linux_group_accounts (pkey, "group", username, is_primary) FROM stdin;
60	mailonly	testimap	t
\.
SELECT setval ('linux.linux_group_accounts_pkey_seq', 61, true);
