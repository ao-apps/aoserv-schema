select "schema".add_foreign_key('business_administrator_permissions', 'username', 'business_administrators', 'username', '1.21', null);
select "schema".add_foreign_key('business_administrator_permissions', 'permission', 'aoserv_permissions', 'name', '1.21', null);
