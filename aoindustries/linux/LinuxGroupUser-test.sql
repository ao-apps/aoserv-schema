COPY linux."LinuxGroupUser" (pkey, "group", username, is_primary) FROM stdin;
60	mailonly	testimap	t
\.
SELECT setval ('linux."LinuxGroupUser_pkey_seq"', 61, true);
