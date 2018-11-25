COPY linux."GroupUser" (pkey, "group", username, is_primary) FROM stdin;
60	mailonly	testimap	t
\.
SELECT setval ('linux."GroupUser_pkey_seq"', 61, true);
