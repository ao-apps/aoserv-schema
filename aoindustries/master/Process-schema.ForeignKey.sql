select "schema".add_foreign_key('master', 'master_processes', 'authenticated_user', 'account', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('master', 'master_processes', 'effective_user',     'account', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('master', 'master_processes', 'daemon_server',      'server',  'ao_servers',              'server',   '1.0a100', null);
select "schema".add_foreign_key('master', 'master_processes', 'aoserv_protocol',    'schema',  'aoserv_protocols',        'version',  '1.0a101', null);
