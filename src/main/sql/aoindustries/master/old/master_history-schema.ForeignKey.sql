select "schema".add_foreign_key('master', 'master_history', 'authenticated_user', 'account', 'business_administrators', 'username', '1.0a100', '1.76');
select "schema".add_foreign_key('master', 'master_history', 'effective_user',     'account', 'business_administrators', 'username', '1.0a100', '1.76');
