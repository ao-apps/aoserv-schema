select "schema".add_foreign_key('master_processes', 'authenticated_user', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('master_processes', 'effective_user', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('master_processes', 'daemon_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('master_processes', 'aoserv_protocol', 'aoserv_protocols', 'version', '1.0a101', null);
