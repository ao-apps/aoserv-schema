select "schema".add_column('net/reputation', 'ip_reputation_limiter_sets', 'pkey',       'pkey',  false,  true, false, 'a generated, unique key',       '1.66', null);
select "schema".add_column('net/reputation', 'ip_reputation_limiter_sets', 'limiter',    'fkey',  false, false, false, 'the identifier of the limiter', '1.66', null);
select "schema".add_column('net/reputation', 'ip_reputation_limiter_sets', 'set',        'fkey',  false, false, false, 'the identifier of the set',     '1.66', null);
select "schema".add_column('net/reputation', 'ip_reputation_limiter_sets', 'sort_order', 'short', false, false, false, 'the per-limiter ordering',      '1.66', null);
