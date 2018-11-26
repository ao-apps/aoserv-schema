COPY linux."GroupUser" (id, "group", username, is_primary) FROM stdin;
60	mailonly	testimap	t
\.
SELECT setval ('linux."GroupUser_id_seq"', 61, true);
