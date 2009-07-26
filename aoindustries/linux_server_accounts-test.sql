insert into linux_server_accounts values(
  1,
  'awstats',
  2,
  78,
  '/var/opt/awstats-6',
  null, null, null, false, null, null, '2009-07-26 08:13:49.184532-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  2,
  'avahi',
  2,
  70,
  '/',
  null, null, null, false, null, null, '2009-07-26 08:18:56.536705-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  3,
  'cyrus',
  2,
  76,
  '/var/lib/imap',
  null, null, null, false, null, null, '2009-07-26 08:25:08.677996-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  4,
  'dbus',
  2,
  81,
  '/',
  null, null, null, false, null, null, '2009-07-26 08:25:19.303223-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  5,
  'distcache',
  2,
  94,
  '/',
  null, null, null, false, null, null, '2009-07-26 08:25:26.342702-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  6,
  'gopher',
  2,
  13,
  '/var/gopher',
  null, null, null, false, null, null, '2009-07-26 08:25:33.406133-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  7,
  'haldaemon',
  2,
  68,
  '/',
  null, null, null, false, null, null, '2009-07-26 08:25:43.48652-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  8,
  'nfsnobody',
  2,
  65534,
  '/var/lib/nfs',
  null, null, null, false, null, null, '2009-07-26 08:25:50.768494-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  9,
  'ntp',
  2,
  38,
  '/etc/ntp',
  null, null, null, false, null, null, '2009-07-26 08:25:58.068168-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  10,
  'pcap',
  2,
  77,
  '/var/arpwatch',
  null, null, null, false, null, null, '2009-07-26 08:26:05.840879-05', true, null, null, 'none', 3.0, 20
);
insert into linux_server_accounts values(
  11,
  'rpcuser',
  2,
  29,
  '/var/lib/nfs',
  null, null, null, false, null, null, '2009-07-26 08:26:13.19232-05', true, null, null, 'none', 3.0, 20
);

COPY linux_server_accounts (pkey, username, ao_server, uid, home, autoresponder_from, autoresponder_subject, autoresponder_path, is_autoresponder_enabled, disable_log, predisable_password, created, use_inbox, trash_email_retention, junk_email_retention, sa_integration_mode, sa_required_score) FROM stdin;
73	apache	2	48	/var/www	\N	\N	\N	f	\N	\N	2004-12-16 22:04:08.645501-06	t	\N	31	pop3	3
74	vcsa	2	69	/dev	\N	\N	\N	f	\N	\N	2004-12-16 22:04:11.305596-06	t	\N	31	pop3	3
75	rpc	2	32	/	\N	\N	\N	f	\N	\N	2004-12-16 22:04:16.446429-06	t	\N	31	pop3	3
85	emailmon	2	504	/home/e/emailmon	\N	\N	\N	f	\N	\N	2004-12-16 22:11:46.108373-06	t	\N	31	pop3	3
77	sshd	2	74	/var/empty/sshd	\N	\N	\N	f	\N	\N	2004-12-16 22:05:51.187403-06	t	\N	31	pop3	3
78	xfs	2	43	/etc/X11/fs	\N	\N	\N	f	\N	\N	2004-12-16 22:05:54.059053-06	t	\N	31	pop3	3
79	xvfb	2	73	/etc/X11	\N	\N	\N	f	\N	\N	2004-12-16 22:05:56.660311-06	t	\N	31	pop3	3
80	mailnull	2	47	/var/spool/mqueue	\N	\N	\N	f	\N	\N	2004-12-16 22:05:59.021821-06	t	\N	31	pop3	3
86	ftpmon	2	505	/home/f/ftpmon	\N	\N	\N	f	\N	\N	2004-12-16 22:11:52.521033-06	t	\N	31	pop3	3
89	testimap	2	506	/home/t/testimap	1	test	/home/t/testimap/.autorespond.txt	t	\N	\N	2004-12-17 01:21:50.068554-06	t	31	31	pop3	3
43	root	2	0	/root	\N	\N	\N	f	\N	\N	2004-12-16 20:27:26.471884-06	t	\N	31	pop3	3
45	bin	2	1	/bin	\N	\N	\N	f	\N	\N	2004-12-16 20:27:32.362974-06	t	\N	31	pop3	3
46	daemon	2	2	/sbin	\N	\N	\N	f	\N	\N	2004-12-16 20:31:48.185364-06	t	\N	31	pop3	3
47	adm	2	3	/var/adm	\N	\N	\N	f	\N	\N	2004-12-16 20:31:51.436107-06	t	\N	31	pop3	3
48	lp	2	4	/var/spool/lpd	\N	\N	\N	f	\N	\N	2004-12-16 20:31:56.525767-06	t	\N	31	pop3	3
49	sync	2	5	/sbin	\N	\N	\N	f	\N	\N	2004-12-16 20:31:59.82806-06	t	\N	31	pop3	3
50	shutdown	2	6	/sbin	\N	\N	\N	f	\N	\N	2004-12-16 20:32:02.978912-06	t	\N	31	pop3	3
51	halt	2	7	/sbin	\N	\N	\N	f	\N	\N	2004-12-16 20:32:06.16898-06	t	\N	31	pop3	3
52	mail	2	8	/var/spool/mail	\N	\N	\N	f	\N	\N	2004-12-16 20:32:10.008467-06	t	\N	31	pop3	3
82	smmsp	2	51	/var/spool/mqueue	\N	\N	\N	f	\N	\N	2004-12-16 22:07:21.159259-06	t	\N	31	pop3	3
54	news	2	9	/etc/news	\N	\N	\N	f	\N	\N	2004-12-16 21:55:31.059852-06	t	\N	31	pop3	3
83	nobody	2	99	/	\N	\N	\N	f	\N	\N	2004-12-16 22:07:24.070357-06	t	\N	31	pop3	3
84	aoadmin	2	503	/home/a/aoadmin	\N	\N	\N	f	\N	\N	2004-12-16 22:11:38.387582-06	t	\N	31	pop3	3
57	uucp	2	10	/var/spool/uucp	\N	\N	\N	f	\N	\N	2004-12-16 22:03:22.314077-06	t	\N	31	pop3	3
58	operator	2	11	/root	\N	\N	\N	f	\N	\N	2004-12-16 22:03:27.917915-06	t	\N	31	pop3	3
59	games	2	12	/usr/games	\N	\N	\N	f	\N	\N	2004-12-16 22:03:32.290739-06	t	\N	31	pop3	3
60	rpm	2	37	/var/lib/rpm	\N	\N	\N	f	\N	\N	2004-12-16 22:03:35.261896-06	t	\N	31	pop3	3
61	ftp	2	14	/var/ftp	\N	\N	\N	f	\N	\N	2004-12-16 22:03:37.983426-06	t	\N	31	pop3	3
62	postgres	2	26	/var/lib/pgsql	\N	\N	\N	f	\N	\N	2004-12-16 22:03:42.116077-06	t	\N	31	pop3	3
63	interbase	2	27	/opt/interbase	\N	\N	\N	f	\N	\N	2004-12-16 22:03:45.068771-06	t	\N	31	pop3	3
64	mysql	2	31	/var/lib/mysql	\N	\N	\N	f	\N	\N	2004-12-16 22:03:47.769904-06	t	\N	31	pop3	3
\.

SELECT setval ('"linux_server_accounts_pkey_seq"', 90, true);
