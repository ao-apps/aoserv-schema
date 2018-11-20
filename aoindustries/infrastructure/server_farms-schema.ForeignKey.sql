select "schema".add_foreign_key('infrastructure', 'server_farms', 'backup_farm', 'infrastructure', 'server_farms', 'name', '1.0a100', '1.30');
select "schema".add_foreign_key('infrastructure', 'server_farms', 'owner',       'billing',        'packages',     'pkey', '1.0a102', null);
