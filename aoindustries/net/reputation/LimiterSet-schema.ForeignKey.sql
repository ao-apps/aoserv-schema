select "schema".add_foreign_key('net.reputation', 'ip_reputation_limiter_sets', 'limiter', 'net.reputation', 'ip_reputation_limiters', 'pkey', '1.66', null);
select "schema".add_foreign_key('net.reputation', 'ip_reputation_limiter_sets', 'set',     'net.reputation', 'ip_reputation_sets',     'pkey', '1.66', null);
