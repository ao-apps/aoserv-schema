select "schema".add_column('master', 'business_administrator_permissions', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.21', null);
select "schema".add_column('master', 'business_administrator_permissions', 'username', 1, 'username', false, false, false, 'the username of the administrator with this permission', '1.21', null);
select "schema".add_column('master', 'business_administrator_permissions', 'permission', 2, 'string', false, false, false, 'the name of the permission that has been granted', '1.21', null);
