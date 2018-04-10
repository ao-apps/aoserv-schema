COPY linux_group_accounts (pkey, group_name, username, is_primary) FROM stdin;
1	root	root	t	\N
2	avahi	avahi	t	\N
3	bin	bin	t	\N
4	daemon	daemon	t	\N
5	adm	adm	t	\N
6	lp	lp	t	\N
7	root	sync	t	\N
8	root	shutdown	t	\N
9	root	halt	t	\N
10	mail	mail	t	\N
11	mail	cyrus	t	\N
12	saslauth	cyrus	f	67
13	root	operator	t	\N
14	users	games	t	\N
16	ftp	ftp	t	\N
17	nobody	nobody	t	\N
18	mailnull	mailnull	t	\N
19	rpc	rpc	t	\N
20	dbus	dbus	t	\N
21	xfs	xfs	t	\N
22	mysql	mysql	t	\N
23	ftpmon	ftpmon	t	\N
24	gopher	gopher	t	\N
25	mailonly	emailmon	t	\N
26	news	news	t	\N
27	aoadmin	aoadmin	t	\N
28	named	named	t	\N
29	nscd	nscd	t	\N
30	postgres	postgres	t	\N
31	ident	ident	t	\N
32	pvm	pvm	t	\N
33	bin	root	f	67
34	bin	daemon	f	67
35	daemon	root	f	67
36	daemon	bin	f	67
37	sys	root	f	67
38	sys	bin	f	67
39	sys	adm	f	67
40	adm	root	f	67
41	adm	daemon	f	67
42	disk	root	f	67
43	lp	daemon	f	67
44	wheel	root	f	67
45	interbase	interbase	t	\N
46	apache	apache	t	\N
47	haldaemon	haldaemon	t	\N
48	xvfb	xvfb	t	\N
49	uucp	uucp	t	\N
50	pcap	pcap	t	\N
51	distcache	distcache	t	\N
52	nfsnobody	nfsnobody	t	\N
53	rpcuser	rpcuser	t	\N
54	sshd	sshd	t	\N
55	smmsp	smmsp	t	\N
56	rpm	rpm	t	\N
57	ntp	ntp	t	\N
58	vcsa	vcsa	t	\N
59	awstats	awstats	t	\N
60	nginx	nginx	t	\N
61	memcached	memcached	t	\N
62	avahi-autoipd	avahi-autoipd	t	\N
63	systemd-bus-proxy	systemd-bus-proxy	t	\N
64	systemd-network	systemd-network	t	\N
65	polkitd	polkitd	t	\N
66	tss	tss	t	\N
67	dhcpd	dhcpd	t	\N
69	tcpdump	tcpdump	t	\N
70	chrony	chrony	t	\N
71	aoserv-jilter	aoserv-jilter	t	\N
72	aoserv-xen-migration	aoserv-xen-migration	t	\N
73	mockbuild	mockbuild	t	\N
\.
SELECT setval ('"linux_group_accounts_pkey_seq"', 73, true);
