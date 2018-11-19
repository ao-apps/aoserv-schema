select "schema".add_foreign_key('ip_reputation_set_networks', 'set_fkey', 'ip_reputation_sets', 'pkey', '1.65', '1.65');
select "schema".add_foreign_key('ip_reputation_set_networks', 'set',      'ip_reputation_sets', 'pkey', '1.66', null);
