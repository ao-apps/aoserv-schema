select "schema".add_column('master', 'business_administrator_permissions', 'pkey',       'pkey',     false,  true, false, 'a generated primary key', '1.21', null);
select "schema".add_column('master', 'business_administrator_permissions', 'username',   'username', false, false, false, 'the username of the administrator with this permission', '1.21', null);
select "schema".add_column('master', 'business_administrator_permissions', 'permission', 'string',   false, false, false, 'the name of the permission that has been granted', '1.21', null);
