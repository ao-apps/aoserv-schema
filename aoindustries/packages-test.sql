COPY packages (pkey, name, accounting, package_definition, created, created_by, disable_log) FROM stdin;
2	TEST	TEST	1	2004-11-28 19:14:02.812879-06	orion	\N
3	MMP	MMP	1	2006-01-19 15:10:10.118323-06	orion	\N
4	NMW	NMW	1	2006-03-21 13:11:00-06	orion	\N
5	MMY	MMY	1	2006-03-23 13:53:00-06	orion	\N
\.
SELECT setval ('"packages_pkey_seq"', 5, true);
