begin;
insert into net_devices values(
    3,
	2,
	'lo',
	'loopback device',
	null, -- delete_route
    null, -- gateway
    null, -- network
    null, -- broadcast,
    null, -- mac_address
    null, -- max_bit_rate
    null, -- monitoring_bit_rate_low
    null, -- monitoring_bit_rate_medium
    null, -- monitoring_bit_rate_high
    null  -- monitoring_bit_rate_critical
);
insert into net_devices values(
    4,
	2,
	'eth0',
	'Nested Test Servers',
	null,
	'192.168.1.3',
	'192.168.1.0',
	'192.168.1.255',
	'00:16:3E:66:FE:33',
	1000000000,
    2000000,
    3000000,
    4000000,
    5000000
);
commit;
