select "schema".add_column('email', 'majordomo_versions', 'version', 'string', false,  true, true, 'the version number', '1.0a100', null);
select "schema".add_column('email', 'majordomo_versions', 'created', 'time',   false, false, true, 'the time the version was added', '1.0a100', null);
