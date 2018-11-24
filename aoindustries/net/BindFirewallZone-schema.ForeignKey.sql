select "schema".add_foreign_key('net', 'net_bind_firewalld_zones', 'net_bind',       'net', 'net_binds',       'pkey', '1.81.0', null);
select "schema".add_foreign_key('net', 'net_bind_firewalld_zones', 'firewalld_zone', 'net', 'firewalld_zones', 'pkey', '1.81.0', null);
