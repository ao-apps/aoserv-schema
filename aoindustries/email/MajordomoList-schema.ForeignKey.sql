select "schema".add_foreign_key('email', 'majordomo_lists', 'email_list',                'email', 'email_lists',          'pkey',   '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_lists', 'majordomo_server',          'email', 'majordomo_servers',    'domain', '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_lists', 'listname_pipe_add',         'email', 'email_pipe_addresses', 'pkey',   '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_lists', 'listname_list_add',         'email', 'email_list_addresses', 'pkey',   '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_lists', 'owner_listname_add',        'email', 'email_addresses',      'pkey',   '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_lists', 'listname_owner_add',        'email', 'email_addresses',      'pkey',   '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_lists', 'listname_approval_add',     'email', 'email_addresses',      'pkey',   '1.0a100', null);
select "schema".add_foreign_key('email', 'majordomo_lists', 'listname_request_pipe_add', 'email', 'email_pipe_addresses', 'pkey',   '1.0a100', null);
