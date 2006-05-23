COPY mysql_databases (pkey, name, mysql_server, package, backup_level, backup_retention) FROM stdin;
1	mysql	2	AOINDUSTRIES	2	31
2	information_schema	2	AOINDUSTRIES	2	31
3	mysql	1	AOINDUSTRIES	2	31
4	calendar	1	MMP	2	31
5	communitydev	1	MMP	2	31
6	coupon	1	MMP	2	31
7	forum	1	MMP	2	31
8	makemeheal	1	MMP	2	31
9	mmh	1	MMP	2	31
10	mmhadmin	1	MMP	2	31
11	phpbb	1	MMP	2	31
12	sarahandariel	1	MMP	2	31
40	newmediaworks	1	NMW	2	31
42	mmy	1	MMY	2	31
\.
SELECT setval ('"mysql_databases_pkey_seq"', 42, true);
