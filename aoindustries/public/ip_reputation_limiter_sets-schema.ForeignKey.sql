select "schema".add_foreign_key('ip_reputation_limiter_sets', 'limiter', 'ip_reputation_limiters', 'pkey', '1.66', null);
select "schema".add_foreign_key('ip_reputation_limiter_sets', 'set',     'ip_reputation_sets',     'pkey', '1.66', null);
