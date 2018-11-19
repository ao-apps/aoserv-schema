select "schema".add_column('shells', 'path', 0, 'path', false, true, true, 'the complete path to the executable', '1.0a100', null);
select "schema".add_column('shells', 'is_login', 1, 'boolean', false, false, true, 'indicates if the shells gives process control', '1.0a100', null);
select "schema".add_column('shells', 'is_system', 2, 'boolean', false, false, true, 'indicates that this shell is for internal use only', '1.0a100', null);
