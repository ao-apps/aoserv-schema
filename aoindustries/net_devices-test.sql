COPY net_devices (pkey, server, device_id, description, delete_route, gateway, netmask, network, broadcast, mac_address, max_bit_rate) FROM stdin;
3	2	lo	loopback device	\N	\N	255.0.0.0	\N	\N	\N	\N
4	2	eth0	Nested Test Servers	192.168.1.0/24	192.168.1.3	255.255.255.0	192.168.1.0	192.168.1.255	\N	100000000
\.
