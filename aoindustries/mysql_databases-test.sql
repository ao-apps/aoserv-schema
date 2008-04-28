COPY mysql_databases (pkey, name, mysql_server, package) FROM stdin;
1	mysql	2	AOINDUSTRIES
2	information_schema	2	AOINDUSTRIES
3	mysql	1	AOINDUSTRIES
4	calendar	1	MMP
5	communitydev	1	MMP
6	coupon	1	MMP
7	forum	1	MMP
8	makemeheal	1	MMP
9	mmh	1	MMP
10	mmhadmin	1	MMP
11	phpbb	1	MMP
12	sarahandariel	1	MMP
40	newmediaworks	1	NMW
42	mmy	1	MMY
\.
SELECT setval ('"mysql_databases_pkey_seq"', 42, true);
