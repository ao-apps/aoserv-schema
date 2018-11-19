select "schema".add_column('dns_records', 'pkey',          0, 'pkey',     false, true,  false, 'a generated pkey', '1.0a100', null);
select "schema".add_column('dns_records', 'zone',          1, 'zone',     false, false, false, 'the zone as found in dns_zones', '1.0a100', null);
select "schema".add_column('dns_records', 'domain',        2, 'hostname', false, false, false, 'the first column in the zone files', '1.0a100', '1.68');
select "schema".add_column('dns_records', 'domain',        3, 'string',   false, false, false, 'the first column in the zone files', '1.69', null);
select "schema".add_column('dns_records', 'type',          4, 'string',   false, false, false, 'the type as found in dns_types', '1.0a100', null);
select "schema".add_column('dns_records', 'mx_priority',   5, 'int',      true,  false, false, 'the priority for the MX entries', '1.0a100', '1.71');
select "schema".add_column('dns_records', 'priority',      6, 'int',      true,  false, false, 'the priority for the entry', '1.72', null);
select "schema".add_column('dns_records', 'weight',        7, 'int',      true,  false, false, 'the relative weight for records with the same priority', '1.72', null);
select "schema".add_column('dns_records', 'port',          8, 'int',      true,  false, false, 'the TCP or UDP port on which the service is to be found', '1.72', null);
select "schema".add_column('dns_records', 'destination',   9, 'string',   false, false, false, 'the destination, either IP addredd or hostname depending on the type of record', '1.0a100', null);
select "schema".add_column('dns_records', 'dhcp_address', 10, 'int',      true,  false, false, 'the pkey of the IP address whos changes are followed', '1.0a100', '1.68');
select "schema".add_column('dns_records', 'dhcp_address', 11, 'fkey',     true,  false, false, 'the pkey of the IP address whos changes are followed', '1.69', null);
select "schema".add_column('dns_records', 'ttl',          12, 'int',      true,  false, false, 'the time to live field', '1.0a127', null);
