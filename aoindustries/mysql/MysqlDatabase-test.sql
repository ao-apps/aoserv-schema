COPY mysql."MysqlDatabase" (pkey, "name", mysql_server, package) FROM stdin;
1	mysql	2	AOINDUSTRIES
2	information_schema	2	AOINDUSTRIES
3	mysql	1	AOINDUSTRIES
40	newmediaworks	1	NMW
\.
SELECT setval ('mysql."MysqlDatabase_pkey_seq"', 42, true);
