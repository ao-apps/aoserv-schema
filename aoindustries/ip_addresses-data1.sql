COPY "ip_addresses" FROM stdin;
1	0.0.0.0	\N	f	\N	AOINDUSTRIES	2001-08-23 18:51:03-05	f	f	f	t	\N	0.0.0.0	t
\.
SELECT setval ('"ip_addresses_pkey_seq"', 835, true);
