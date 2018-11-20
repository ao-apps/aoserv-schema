select "schema".add_foreign_key('net', 'ip_reputation_limiter_sets', 'limiter', 'net', 'ip_reputation_limiters', 'pkey', '1.66', null);
select "schema".add_foreign_key('net', 'ip_reputation_limiter_sets', 'set',     'net', 'ip_reputation_sets',     'pkey', '1.66', null);
