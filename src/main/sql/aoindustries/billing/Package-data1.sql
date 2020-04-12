COPY billing."Package" FROM stdin;
1	AOINDUSTRIES	AOINDUSTRIES	31	2001-03-28 19:34:26-06	orion	\N	1000	10	200	.2	100	.1
\.
SELECT setval ('billing."Package_id_seq"', 1, true);
