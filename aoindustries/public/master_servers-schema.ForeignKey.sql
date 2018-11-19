select "schema".add_foreign_key('master_servers', 'username', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('master_servers', 'server', 'servers', 'pkey', '1.0a100', null);
