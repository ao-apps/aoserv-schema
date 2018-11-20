select "schema".add_column('linux', 'linux_ids', 'id', 0, 'int', false, true, true, 'the id', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_ids', 'id', 1, 'pkey', false, true, true, 'the id', '1.69', '1.80');
select "schema".add_column('linux', 'linux_ids', 'is_system', 2, 'boolean', false, false, true, 'true if reserved for system use', '1.0a100', '1.79');
