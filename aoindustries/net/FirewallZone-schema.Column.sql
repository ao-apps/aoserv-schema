select "schema".add_column('net', 'firewalld_zones', 'pkey',        'pkey',                false,  true, false, 'a generated unique primary key', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'server',      'fkey',                false, false, false, 'the pkey of the server', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'name',        'firewalld_zone_name', false, false, false, 'the name of the Firewalld zone', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'short',       'string',               true, false, false, 'the optional short name', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'description', 'string',               true, false, false, 'the optional description', '1.81.0', null);
select "schema".add_column('net', 'firewalld_zones', 'fail2ban',    'boolean',             false, false, false, 'enables Fail2ban on services in this zone', '1.81.9', null);