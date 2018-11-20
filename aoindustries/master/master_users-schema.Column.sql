select "schema".add_column('master', 'master_users', 'username',                   'username', false,  true, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'is_active',                  'boolean',  false, false, false, 'this level of access may be disabled', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_access_accounting',      'boolean',  false, false, false, 'if they can access accounting resources', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_access_bank_accounting', 'boolean',  false, false, false, 'if they can access bank account info', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_invalidate_tables',      'boolean',  false, false, false, 'if they can invalidate master tables', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_access_admin_web',       'boolean',  false, false, false, 'if they can access administrative web pages', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'is_ticket_admin',            'boolean',  false, false, false, 'if they can access ticket admin stuff', '1.0a100', '1.43');
select "schema".add_column('master', 'master_users', 'is_dns_admin',               'boolean',  false, false, false, 'if they can access all DNS stuff', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_switch_users',           'boolean',  false, false, false, '', '1.0a100', '1.0a117');
select "schema".add_column('master', 'master_users', 'is_router',                  'boolean',  false, false, false, 'if they read all router stuff', '1.65', null);
select "schema".add_column('master', 'master_users', 'is_cluster_admin',           'boolean',  false, false, false, 'if they can control cluster resources', '1.73', null);
