select "schema".add_column('ip_reputation_limiter_sets', 'pkey',       0, 'pkey',  false, true,  false, 'a generated, unique key',       '1.66', null);
select "schema".add_column('ip_reputation_limiter_sets', 'limiter',    1, 'fkey',  false, false, false, 'the identifier of the limiter', '1.66', null);
select "schema".add_column('ip_reputation_limiter_sets', 'set',        2, 'fkey',  false, false, false, 'the identifier of the set',     '1.66', null);
select "schema".add_column('ip_reputation_limiter_sets', 'sort_order', 3, 'short', false, false, false, 'the per-limiter ordering',      '1.66', null);
