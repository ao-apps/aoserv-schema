select "schema".add_foreign_key('net_bind_firewalld_zones', 'net_bind', 'net_binds', 'pkey', '1.81.0', null);
select "schema".add_foreign_key('net_bind_firewalld_zones', 'firewalld_zone', 'firewalld_zones', 'pkey', '1.81.0', null);
