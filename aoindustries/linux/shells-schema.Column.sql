select "schema".add_column('linux', 'shells', 'path',      'path',    false,  true, true, 'the complete path to the executable', '1.0a100', null);
select "schema".add_column('linux', 'shells', 'is_login',  'boolean', false, false, true, 'indicates if the shells gives process control', '1.0a100', null);
select "schema".add_column('linux', 'shells', 'is_system', 'boolean', false, false, true, 'indicates that this shell is for internal use only', '1.0a100', null);
