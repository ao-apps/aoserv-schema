select "schema".add_column('ip_reputation_limiters', 'pkey',                 0, 'pkey',        false, true,  false, 'a generated, unique key',                            '1.66', null);
select "schema".add_column('ip_reputation_limiters', 'net_device',           1, 'fkey',        false, false, false, 'the identifier of the net_device that is protected', '1.66', null);
select "schema".add_column('ip_reputation_limiters', 'identifier',           2, 'string',      false, false, false, 'the per-net_device unique identifier',               '1.66', null);
select "schema".add_column('ip_reputation_limiters', 'description',          3, 'string',      true,  false, false, 'an optional description of the limiter',             '1.66', null);
