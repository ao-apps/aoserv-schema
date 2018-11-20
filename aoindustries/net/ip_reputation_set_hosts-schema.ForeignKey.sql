select "schema".add_foreign_key('net', 'ip_reputation_set_hosts', 'set_fkey', 'ip_reputation_sets', 'pkey', '1.65', '1.65');
select "schema".add_foreign_key('net', 'ip_reputation_set_hosts', 'set',      'ip_reputation_sets', 'pkey', '1.66', null);
