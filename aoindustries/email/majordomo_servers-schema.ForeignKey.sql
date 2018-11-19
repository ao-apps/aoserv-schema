select "schema".add_foreign_key('email', 'majordomo_servers', 'domain',                         'email_domains',         'pkey',    '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_servers', 'linux_server_account', 'public', 'linux_server_accounts', 'pkey',    '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_servers', 'linux_server_group',   'public', 'linux_server_groups',   'pkey',    '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_servers', 'version',                        'majordomo_versions',    'version', '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_servers', 'majordomo_pipe_address',         'email_pipe_addresses',  'pkey',    '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_servers', 'owner_majordomo_add',            'email_addresses',       'pkey',    '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_servers', 'majordomo_owner_add',            'email_addresses',       'pkey',    '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_servers', 'backup_level',         'public', 'backup_levels',        'level',    '1.0a100', '1.30');
select "schema".add_foreign_key('email', 'majordomo_servers', 'backup_retention',     'public', 'backup_retentions',     'days',    '1.0a100', '1.30');
