begin;
COPY linux."GroupServer" (pkey, "name", ao_server, gid, created) FROM stdin;
1	awstats	2	78	2009-07-26 08:29:14.890907-05
62	root	2	0	2004-12-16 20:01:58.522214-06
63	bin	2	1	2004-12-16 20:01:58.983424-06
64	daemon	2	2	2004-12-16 20:01:58.986458-06
65	sys	2	3	2004-12-16 20:01:58.989386-06
66	adm	2	4	2004-12-16 20:01:58.999162-06
67	tty	2	5	2004-12-16 20:01:59.002078-06
68	disk	2	6	2004-12-16 20:01:59.004933-06
69	lp	2	7	2004-12-16 20:01:59.007833-06
70	mem	2	8	2004-12-16 20:01:59.010728-06
71	kmem	2	9	2004-12-16 20:01:59.013641-06
72	wheel	2	10	2004-12-16 20:02:02.974763-06
73	mail	2	12	2004-12-16 20:02:02.977704-06
139	news	2	13	2004-12-16 20:05:37.411884-06
75	uucp	2	14	2004-12-16 20:02:02.98234-06
76	man	2	15	2004-12-16 20:02:02.984862-06
77	floppy	2	19	2004-12-16 20:02:02.987399-06
78	games	2	20	2004-12-16 20:02:02.989949-06
80	utmp	2	22	2004-12-16 20:02:02.994444-06
81	postgres	2	26	2004-12-16 20:02:02.997026-06
82	interbase	2	27	2004-12-16 20:02:07.107278-06
83	mysql	2	31	2004-12-16 20:02:07.110291-06
87	ftp	2	50	2004-12-16 20:02:07.127531-06
88	ftponly	2	52	2004-12-16 20:02:07.130109-06
91	lock	2	54	2004-12-16 20:02:07.154124-06
92	apache	2	48	2004-12-16 20:02:11.085015-06
93	vcsa	2	69	2004-12-16 20:02:11.170803-06
94	rpc	2	32	2004-12-16 20:02:11.173734-06
201	sshd	2	74	2004-12-16 20:08:47.460724-06
96	xvfb	2	73	2004-12-16 20:02:11.178601-06
97	xfs	2	43	2004-12-16 20:02:11.18157-06
98	mailnull	2	47	2004-12-16 20:02:11.184543-06
216	smmsp	2	51	2004-12-16 20:22:45.9845-06
103	mailonly	2	83	2004-12-16 20:02:24.289484-06
104	users	2	100	2004-12-16 20:02:24.292178-06
105	rpm	2	37	2004-12-16 20:02:24.294693-06
109	slocate	2	21	2004-12-16 20:02:24.306499-06
234	aoadmin	2	502	2004-12-16 20:27:13.373372-06
235	ftpmon	2	503	2004-12-16 20:27:19.14166-06
\.
insert into linux."GroupServer" values(
  2,
  'avahi',
  2,
  70,
  '2009-07-26 08:32:18.307947-05'
);
insert into linux."GroupServer" values(
  3,
  'dbus',
  2,
  81,
  '2009-07-26 08:32:25.884859-05'
);
insert into linux."GroupServer" values(
  4,
  'dip',
  2,
  40,
  '2009-07-26 08:32:36.173815-05'
);
insert into linux."GroupServer" values(
  5,
  'distcache',
  2,
  94,
  '2009-07-26 08:32:44.804511-05'
);
insert into linux."GroupServer" values(
  6,
  'gopher',
  2,
  30,
  '2009-07-26 08:32:53.517199-05'
);
insert into linux."GroupServer" values(
  7,
  'haldaemon',
  2,
  68,
  '2009-07-26 08:33:01.245011-05'
);
insert into linux."GroupServer" values(
  8,
  'nfsnobody',
  2,
  65534,
  '2009-07-26 08:33:08.013226-05'
);
insert into linux."GroupServer" values(
  9,
  'nobody',
  2,
  99,
  '2009-07-26 08:33:14.877389-05'
);
insert into linux."GroupServer" values(
  10,
  'ntp',
  2,
  38,
  '2009-07-26 08:33:22.349015-05'
);
insert into linux."GroupServer" values(
  11,
  'pcap',
  2,
  77,
  '2009-07-26 08:33:30.494944-05'
);
insert into linux."GroupServer" values(
  12,
  'rpcuser',
  2,
  29,
  '2009-07-26 08:33:37.786426-05'
);
insert into linux."GroupServer" values(
  13,
  'saslauth',
  2,
  76,
  '2009-07-26 08:33:47.629459-05'
);
insert into linux."GroupServer" values(
  14,
  'screen',
  2,
  84,
  '2009-07-26 08:33:55.81438-05'
);
insert into linux."GroupServer" values(
  15,
  'utempter',
  2,
  35,
  '2009-07-26 08:34:05.101825-05'
);
insert into linux."GroupServer" values(
  16,
  'named',
  2,
  25,
  '2009-07-26 10:09:47.138126-05'
);
-- TODO: Add nginx group
-- TODO: Add memcached group
commit;
