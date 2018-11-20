select "schema".add_column('net', 'net_bind_firewalld_zones', 'pkey', 0, 'pkey', false, true, false, 'a generated pkey', '1.81.0', null);
select "schema".add_column('net', 'net_bind_firewalld_zones', 'net_bind', 1, 'fkey', false, false, false, 'the pkey of the port that is associated with the zone', '1.81.0', null);
select "schema".add_column('net', 'net_bind_firewalld_zones', 'firewalld_zone', 2, 'fkey', false, false, false, 'the pkey of the zone this port is associated with', '1.81.0', null);
