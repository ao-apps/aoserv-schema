select "schema".add_foreign_key('server_farms', 'backup_farm', 'server_farms', 'name', '1.0a100', '1.30');
select "schema".add_foreign_key('server_farms', 'owner', 'packages', 'pkey', '1.0a102', null);
