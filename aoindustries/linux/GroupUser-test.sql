COPY linux."GroupUser" (id, "group", "user", "isPrimary") FROM stdin;
60	mailonly	testimap	t
\.
SELECT setval ('linux."GroupUser_id_seq"', 61, true);
