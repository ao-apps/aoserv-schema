select "schema".add_foreign_key('account', 'business_administrator_permissions', 'username',             'business_administrators', 'username', '1.21', null);
select "schema".add_foreign_key('account', 'business_administrator_permissions', 'permission', 'public', 'aoserv_permissions',      'name',     '1.21', null);
