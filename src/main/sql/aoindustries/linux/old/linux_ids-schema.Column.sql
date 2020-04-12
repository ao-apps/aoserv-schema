select "schema".add_column('linux', 'linux_ids', 'id',        'int',     false,  true, true, 'the id', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_ids', 'id',        'pkey',    false,  true, true, 'the id', '1.69', '1.80');
select "schema".add_column('linux', 'linux_ids', 'is_system', 'boolean', false, false, true, 'true if reserved for system use', '1.0a100', '1.79');
