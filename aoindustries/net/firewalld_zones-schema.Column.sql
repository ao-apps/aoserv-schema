select "schema".add_column('net', 'firewalld_zones', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'server', 1, 'fkey', false, false, false, 'the pkey of the server', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'name', 2, 'firewalld_zone_name', false, false, false, 'the name of the Firewalld zone', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'short', 3, 'string', true, false, false, 'the optional short name', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'description', 4, 'string', true, false, false, 'the optional description', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'fail2ban', 5, 'boolean', false, false, false, 'enables Fail2ban on services in this zone', '1.81.9', null);
