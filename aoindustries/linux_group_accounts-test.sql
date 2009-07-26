COPY linux_group_accounts (pkey, group_name, username, is_primary) FROM stdin;
60	mailonly	testimap	t
\.
SELECT setval ('"linux_group_accounts_pkey_seq"', 61, true);
