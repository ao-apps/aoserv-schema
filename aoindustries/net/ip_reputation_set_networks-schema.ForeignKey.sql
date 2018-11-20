select "schema".add_foreign_key('net', 'ip_reputation_set_networks', 'set_fkey', 'net', 'ip_reputation_sets', 'pkey', '1.65', '1.65');
select "schema".add_foreign_key('net', 'ip_reputation_set_networks', 'set',      'net', 'ip_reputation_sets', 'pkey', '1.66', null);
