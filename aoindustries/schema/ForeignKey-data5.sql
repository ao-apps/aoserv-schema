\echo majordomo_lists
select "schema".add_foreign_key('majordomo_lists', 'email_list', 'email_lists', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_lists', 'majordomo_server', 'majordomo_servers', 'domain', '1.0a100', null);
select "schema".add_foreign_key('majordomo_lists', 'listname_pipe_add', 'email_pipe_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_lists', 'listname_list_add', 'email_list_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_lists', 'owner_listname_add', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_lists', 'listname_owner_add', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_lists', 'listname_approval_add', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_lists', 'listname_request_pipe_add', 'email_pipe_addresses', 'pkey', '1.0a100', null);

\echo majordomo_servers
select "schema".add_foreign_key('majordomo_servers', 'domain', 'email_domains', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_servers', 'linux_server_group', 'linux_server_groups', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_servers', 'version', 'majordomo_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('majordomo_servers', 'majordomo_pipe_address', 'email_pipe_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_servers', 'owner_majordomo_add', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_servers', 'majordomo_owner_add', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('majordomo_servers', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('majordomo_servers', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');

\echo master_hosts
select "schema".add_foreign_key('master_hosts', 'username', 'master_users', 'username', '1.0a100', null);

\echo master_processes
select "schema".add_foreign_key('master_processes', 'authenticated_user', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('master_processes', 'effective_user', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('master_processes', 'daemon_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('master_processes', 'aoserv_protocol', 'aoserv_protocols', 'version', '1.0a101', null);

\echo master_servers
select "schema".add_foreign_key('master_servers', 'username', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('master_servers', 'server', 'servers', 'pkey', '1.0a100', null);

\echo master_users
select "schema".add_foreign_key('master_users', 'username', 'business_administrators', 'username', '1.0a100', null);

\echo monthly_charges
select "schema".add_foreign_key('monthly_charges', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('monthly_charges', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('monthly_charges', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('monthly_charges', 'type', 'rates', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('monthly_charges', 'type', 'transaction_types', 'name', '1.0a123', null);
select "schema".add_foreign_key('monthly_charges', 'created_by', 'business_administrators', 'username', '1.0a100', null);

\echo mysql_databases
select "schema".add_foreign_key('mysql_databases', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.3');
select "schema".add_foreign_key('mysql_databases', 'mysql_server', 'mysql_servers', 'pkey', '1.4', null);
select "schema".add_foreign_key('mysql_databases', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('mysql_databases', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('mysql_databases', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('mysql_databases', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');

\echo mysql_db_users
select "schema".add_foreign_key('mysql_db_users', 'mysql_database', 'mysql_databases', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('mysql_db_users', 'mysql_user', 'mysql_server_users', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('mysql_db_users', 'mysql_server_user', 'mysql_server_users', 'pkey', '1.31', null);

\echo mysql_server_users
select "schema".add_foreign_key('mysql_server_users', 'username', 'mysql_users', 'username', '1.0a100', '1.80');
select "schema".add_foreign_key('mysql_server_users', 'username', 'mysql_users', 'username', '1.80.0', null);
select "schema".add_foreign_key('mysql_server_users', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.3');
select "schema".add_foreign_key('mysql_server_users', 'mysql_server', 'mysql_servers', 'pkey', '1.4', null);
select "schema".add_foreign_key('mysql_server_users', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo mysql_servers
select "schema".add_foreign_key('mysql_servers', 'ao_server', 'ao_servers', 'server', '1.4', null);
select "schema".add_foreign_key('mysql_servers', 'version', 'technology_versions', 'pkey', '1.4', null);
select "schema".add_foreign_key('mysql_servers', 'net_bind', 'net_binds', 'pkey', '1.4', null);
select "schema".add_foreign_key('mysql_servers', 'package', 'packages', 'name', '1.28', '1.80');
select "schema".add_foreign_key('mysql_servers', 'package', 'packages', 'name', '1.80.0', null);

\echo mysql_users
select "schema".add_foreign_key('mysql_users', 'username', 'usernames', 'username', '1.0a100', '1.80');
select "schema".add_foreign_key('mysql_users', 'username', 'usernames', 'username', '1.80.0', null);
select "schema".add_foreign_key('mysql_users', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo net_bind_firewalld_zones
select "schema".add_foreign_key('net_bind_firewalld_zones', 'net_bind', 'net_binds', 'pkey', '1.81.0', null);
select "schema".add_foreign_key('net_bind_firewalld_zones', 'firewalld_zone', 'firewalld_zones', 'pkey', '1.81.0', null);

\echo net_binds
select "schema".add_foreign_key('net_binds', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('net_binds', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('net_binds', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.32');
select "schema".add_foreign_key('net_binds', 'server', 'servers', 'pkey', '1.33', null);
select "schema".add_foreign_key('net_binds', 'ip_address', 'ip_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('net_binds', 'port', 'net_ports', 'port', '1.0a100', '1.68');
select "schema".add_foreign_key('net_binds', 'port', 'net_ports', 'port', '1.69', '1.80');
select "schema".add_foreign_key('net_binds', 'net_protocol', 'net_protocols', 'protocol', '1.0a100', '1.80');
select "schema".add_foreign_key('net_binds', 'app_protocol', 'protocols', 'protocol', '1.0a100', null);
select "schema".add_foreign_key('net_binds', 'monitor_delay', 'net_monitoring_times', 'time', '1.0a100', '1.0a103');

\echo net_devices
select "schema".add_foreign_key('net_devices', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.32');
select "schema".add_foreign_key('net_devices', 'server', 'servers', 'pkey', '1.33', null);
select "schema".add_foreign_key('net_devices', 'device_id', 'net_device_ids', 'name', '1.0a100', null);

\echo net_tcp_redirects
select "schema".add_foreign_key('net_tcp_redirects', 'net_bind', 'net_binds', 'pkey', '1.0a111', '1.68');
select "schema".add_foreign_key('net_tcp_redirects', 'net_bind', 'net_binds', 'pkey', '1.69', null);
select "schema".add_foreign_key('net_tcp_redirects', 'destination_port', 'net_ports', 'port', '1.0a111', '1.68');
select "schema".add_foreign_key('net_tcp_redirects', 'destination_port', 'net_ports', 'port', '1.69', '1.80');

\echo notice_log
select "schema".add_foreign_key('notice_log', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('notice_log', 'notice_type', 'notice_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('notice_log', 'transid', 'transactions', 'transid', '1.0a100', '1.68');
select "schema".add_foreign_key('notice_log', 'transid', 'transactions', 'transid', '1.69', null);

\echo operating_system_versions
select "schema".add_foreign_key('operating_system_versions', 'operating_system', 'operating_systems', 'name', '1.0a100', null);
select "schema".add_foreign_key('operating_system_versions', 'architecture', 'architectures', 'name', '1.0a108', null);

\echo package_definition_limits
select "schema".add_foreign_key('package_definition_limits', 'package_definition', 'package_definitions', 'pkey', '1.0a123', null);
select "schema".add_foreign_key('package_definition_limits', 'resource', 'resources', 'name', '1.0a123', null);
select "schema".add_foreign_key('package_definition_limits', 'additional_transaction_type', 'transaction_types', 'name', '1.0a123', null);

\echo package_definitions
select "schema".add_foreign_key('package_definitions', 'accounting', 'businesses', 'accounting', '1.0a123', '1.43');
select "schema".add_foreign_key('package_definitions', 'brand', 'brands', 'accounting', '1.44', '1.44');
select "schema".add_foreign_key('package_definitions', 'accounting', 'businesses', 'accounting', '1.45', null);
select "schema".add_foreign_key('package_definitions', 'category', 'package_categories', 'name', '1.0a123', null);
select "schema".add_foreign_key('package_definitions', 'setup_fee_transaction_type', 'transaction_types', 'name', '1.0a123', null);
select "schema".add_foreign_key('package_definitions', 'monthly_rate_transaction_type', 'transaction_types', 'name', '1.0a123', null);

\echo packages
select "schema".add_foreign_key('packages', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('packages', 'level', 'service_levels', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('packages', 'created_by', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('packages', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo physical_servers
select "schema".add_foreign_key('physical_servers', 'server', 'servers', 'pkey', '1.36', null);
select "schema".add_foreign_key('physical_servers', 'rack', 'racks', 'pkey', '1.36', null);
select "schema".add_foreign_key('physical_servers', 'processor_type', 'processor_types', 'type', '1.36', null);

\echo postgres_databases
select "schema".add_foreign_key('postgres_databases', 'postgres_server', 'postgres_servers', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('postgres_databases', 'datdba', 'postgres_server_users', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('postgres_databases', 'encoding', 'postgres_encodings', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('postgres_databases', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_databases', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');

\echo postgres_encodings
select "schema".add_foreign_key('postgres_encodings', 'postgres_version', 'postgres_versions', 'version', '1.0a100', null);

\echo postgres_server_users
select "schema".add_foreign_key('postgres_server_users', 'username', 'postgres_users', 'username', '1.0a100', '1.80');
select "schema".add_foreign_key('postgres_server_users', 'username', 'postgres_users', 'username', '1.80.0', null);
select "schema".add_foreign_key('postgres_server_users', 'postgres_server', 'postgres_servers', 'pkey', '1.0a100', '1.68');
select "schema".add_foreign_key('postgres_server_users', 'postgres_server', 'postgres_servers', 'pkey', '1.69', null);
select "schema".add_foreign_key('postgres_server_users', 'usesysid', 'linux_ids', 'id', '1.0a100', '1.0a130');
select "schema".add_foreign_key('postgres_server_users', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo postgres_servers
select "schema".add_foreign_key('postgres_servers', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('postgres_servers', 'version', 'postgres_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('postgres_servers', 'net_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('postgres_servers', 'last_postgres_usesysid', 'linux_ids', 'id', '1.0a100', '1.0a130');

\echo postgres_users
select "schema".add_foreign_key('postgres_users', 'username', 'usernames', 'username', '1.0a100', '1.80');
select "schema".add_foreign_key('postgres_users', 'username', 'usernames', 'username', '1.80.0', null);
select "schema".add_foreign_key('postgres_users', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo postgres_versions
select "schema".add_foreign_key('postgres_versions', 'version', 'technology_versions', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('postgres_versions', 'default_port', 'net_ports', 'port', '1.0a100', '1.0a109');
select "schema".add_foreign_key('postgres_versions', 'postgis_version', 'technology_versions', 'pkey', '1.27', null);

\echo private_ftp_servers
select "schema".add_foreign_key('private_ftp_servers', 'ip_address', 'ip_addresses', 'pkey', '1.0a100', '1.0a112');
select "schema".add_foreign_key('private_ftp_servers', 'net_bind', 'net_binds', 'pkey', '1.0a113', null);
select "schema".add_foreign_key('private_ftp_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.0a100', '1.68');
select "schema".add_foreign_key('private_ftp_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.69', null);
select "schema".add_foreign_key('private_ftp_servers', 'linux_server_group', 'linux_server_groups', 'pkey', '1.0a100', '1.38');

\echo racks
select "schema".add_foreign_key('racks', 'farm', 'server_farms', 'name', '1.36', null);

\echo resellers
select "schema".add_foreign_key('resellers', 'accounting', 'brands', 'accounting', '1.44', null);

\echo sendmail_binds
select "schema".add_foreign_key('sendmail_binds', 'net_bind', 'net_binds', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_binds', 'sendmail_server', 'sendmail_servers', 'pkey', '1.81.10', null);

\echo sendmail_servers
select "schema".add_foreign_key('sendmail_servers', 'ao_server', 'ao_servers', 'server', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'package', 'packages', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'server_certificate', 'ssl_certificates', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'client_certificate', 'ssl_certificates', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'client_addr_inet', 'ip_addresses', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'client_addr_inet6', 'ip_addresses', 'pkey', '1.81.10', null);

\echo server_farms
select "schema".add_foreign_key('server_farms', 'backup_farm', 'server_farms', 'name', '1.0a100', '1.30');
select "schema".add_foreign_key('server_farms', 'owner', 'packages', 'pkey', '1.0a102', null);

\echo servers
select "schema".add_foreign_key('servers', 'farm', 'server_farms', 'name', '1.0a100', null);
select "schema".add_foreign_key('servers', 'owner', 'businesses', 'accounting', '1.0a100', '1.30');
select "schema".add_foreign_key('servers', 'administrator', 'business_administrators', 'username', '1.0a100', '1.30');
select "schema".add_foreign_key('servers', 'architecture', 'architectures', 'name', '1.0a100', '1.0a107');
select "schema".add_foreign_key('servers', 'operating_system_version', 'operating_system_versions', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('servers', 'operating_system_version', 'operating_system_versions', 'pkey', '1.31', null);
select "schema".add_foreign_key('servers', 'package', 'packages', 'pkey', '1.31', null);

\echo signup_request_options
select "schema".add_foreign_key('signup_request_options', 'request', 'signup_requests', 'pkey', '1.23', null);

\echo signup_requests
select "schema".add_foreign_key('signup_requests', 'accounting', 'businesses', 'accounting', '1.23', '1.43');
select "schema".add_foreign_key('signup_requests', 'brand', 'brands', 'accounting', '1.44', null);
select "schema".add_foreign_key('signup_requests', 'package_definition', 'package_definitions', 'pkey', '1.23', null);
select "schema".add_foreign_key('signup_requests', 'business_country', 'country_codes', 'code', '1.23', '1.68');
select "schema".add_foreign_key('signup_requests', 'business_country', 'country_codes', 'code', '1.69', null);
select "schema".add_foreign_key('signup_requests', 'ba_country', 'country_codes', 'code', '1.23', '1.68');
select "schema".add_foreign_key('signup_requests', 'ba_country', 'country_codes', 'code', '1.69', null);
select "schema".add_foreign_key('signup_requests', 'encryption_from', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('signup_requests', 'encryption_key', 'encryption_keys', 'pkey', '1.23', '1.30');
select "schema".add_foreign_key('signup_requests', 'encryption_recipient', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('signup_requests', 'completed_by', 'business_administrators', 'username', '1.23', null);

\echo spam_email_messages
select "schema".add_foreign_key('spam_email_messages', 'email_relay', 'email_smtp_relays', 'pkey', '1.0a100', null);

\echo ssl_certificate_names
select "schema".add_foreign_key('ssl_certificate_names', 'ssl_certificate', 'ssl_certificates', 'pkey', '1.81.10', null);

\echo ssl_certificate_other_uses
select "schema".add_foreign_key('ssl_certificate_other_uses', 'ssl_certificate', 'ssl_certificates', 'pkey', '1.81.16', null);

\echo ssl_certificates
select "schema".add_foreign_key('ssl_certificates', 'ao_server', 'ao_servers', 'server', '1.81.10', null);
select "schema".add_foreign_key('ssl_certificates', 'package', 'packages', 'pkey', '1.81.10', null);

\echo system_email_aliases
select "schema".add_foreign_key('system_email_aliases', 'ao_server', 'ao_servers', 'server', '1.0a100', null);

\echo technologies
select "schema".add_foreign_key('technologies', 'name', 'technology_names', 'name', '1.0a100', null);
select "schema".add_foreign_key('technologies', 'class', 'technology_classes', 'name', '1.0a100', null);

\echo technology_versions
select "schema".add_foreign_key('technology_versions', 'name', 'technology_names', 'name', '1.0a100', null);
select "schema".add_foreign_key('technology_versions', 'owner', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('technology_versions', 'operating_system_version', 'operating_system_versions', 'pkey', '1.0a108', null);

\echo ticket_actions
select "schema".add_foreign_key('ticket_actions', 'ticket', 'tickets', 'pkey', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'administrator', 'business_administrators', 'username', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'action_type', 'ticket_action_types', 'type', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'old_accounting', 'businesses', 'accounting', '1.44', '1.68');
select "schema".add_foreign_key('ticket_actions', 'old_accounting', 'businesses', 'accounting', '1.69', null);
select "schema".add_foreign_key('ticket_actions', 'new_accounting', 'businesses', 'accounting', '1.44', '1.68');
select "schema".add_foreign_key('ticket_actions', 'new_accounting', 'businesses', 'accounting', '1.69', null);
select "schema".add_foreign_key('ticket_actions', 'old_priority', 'ticket_priorities', 'priority', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'new_priority', 'ticket_priorities', 'priority', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'old_type', 'ticket_types', 'type', '1.49', null);
select "schema".add_foreign_key('ticket_actions', 'new_type', 'ticket_types', 'type', '1.49', null);
select "schema".add_foreign_key('ticket_actions', 'old_status', 'ticket_stati', 'status', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'new_status', 'ticket_stati', 'status', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'old_assigned_to', 'business_administrators', 'username', '1.44', '1.80');
select "schema".add_foreign_key('ticket_actions', 'old_assigned_to', 'business_administrators', 'username', '1.80.0', null);
select "schema".add_foreign_key('ticket_actions', 'new_assigned_to', 'business_administrators', 'username', '1.44', '1.80');
select "schema".add_foreign_key('ticket_actions', 'new_assigned_to', 'business_administrators', 'username', '1.80.0', null);
select "schema".add_foreign_key('ticket_actions', 'old_category', 'ticket_categories', 'pkey', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'new_category', 'ticket_categories', 'pkey', '1.44', null);

\echo ticket_assignments
select "schema".add_foreign_key('ticket_assignments', 'ticket', 'tickets', 'pkey', '1.44', null);
select "schema".add_foreign_key('ticket_assignments', 'reseller', 'resellers', 'accounting', '1.44', null);
select "schema".add_foreign_key('ticket_assignments', 'administrator', 'business_administrators', 'username', '1.44', null);

\echo ticket_brand_categories
select "schema".add_foreign_key('ticket_brand_categories', 'brand', 'brands', 'accounting', '1.44', null);
select "schema".add_foreign_key('ticket_brand_categories', 'category', 'ticket_categories', 'pkey', '1.44', null);

\echo ticket_categories
select "schema".add_foreign_key('ticket_categories', 'parent', 'ticket_categories', 'pkey', '1.44', null);

\echo tickets
select "schema".add_foreign_key('tickets', 'brand', 'brands', 'accounting', '1.46', null);
select "schema".add_foreign_key('tickets', 'reseller', 'resellers', 'accounting', '1.44', null);
select "schema".add_foreign_key('tickets', 'package', 'packages', 'name', '1.0a100', '1.0a125');
select "schema".add_foreign_key('tickets', 'accounting', 'businesses', 'accounting', '1.0a126', null);
select "schema".add_foreign_key('tickets', 'language', 'languages', 'code', '1.44', null);
select "schema".add_foreign_key('tickets', 'administrator', 'business_administrators', 'username', '1.0a100', '1.0a125');
select "schema".add_foreign_key('tickets', 'created_by', 'business_administrators', 'username', '1.0a126', null);
select "schema".add_foreign_key('tickets', 'category', 'ticket_categories', 'pkey', '1.44', null);
select "schema".add_foreign_key('tickets', 'ticket_type', 'ticket_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('tickets', 'closed_by', 'business_administrators', 'username', '1.0a100', '1.43');
select "schema".add_foreign_key('tickets', 'client_priority', 'ticket_priorities', 'priority', '1.0a100', null);
select "schema".add_foreign_key('tickets', 'admin_priority', 'ticket_priorities', 'priority', '1.0a100', '1.9');
select "schema".add_foreign_key('tickets', 'admin_priority', 'ticket_priorities', 'priority', '1.10', null);
select "schema".add_foreign_key('tickets', 'technology', 'technology_names', 'name', '1.0a100', '1.43');
select "schema".add_foreign_key('tickets', 'status', 'ticket_stati', 'status', '1.0a100', null);
select "schema".add_foreign_key('tickets', 'assigned_to', 'business_administrators', 'username', '1.0a125', '1.43');

\echo transactions
select "schema".add_foreign_key('transactions', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('transactions', 'source_accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('transactions', 'username', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('transactions', 'type', 'rates', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('transactions', 'type', 'transaction_types', 'name', '1.0a123', null);
select "schema".add_foreign_key('transactions', 'payment_type', 'payment_types', 'name', '1.0a100', null);
select "schema".add_foreign_key('transactions', 'merchant_account', 'merchant_accounts', 'name', '1.0a100', '1.28');
select "schema".add_foreign_key('transactions', 'processor', 'credit_card_processors', 'provider_id', '1.29', null);
select "schema".add_foreign_key('transactions', 'credit_card_transaction', 'credit_card_transactions', 'pkey', '1.29', null);

\echo usernames
select "schema".add_foreign_key('usernames', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('usernames', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('usernames', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo virtual_disks
select "schema".add_foreign_key('virtual_disks', 'virtual_server', 'virtual_servers', 'server', '1.36', null);
select "schema".add_foreign_key('virtual_disks', 'minimum_raid_type', 'raid_types', 'type', '1.41', '1.41');
select "schema".add_foreign_key('virtual_disks', 'primary_minimum_raid_type', 'raid_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_disks', 'secondary_minimum_raid_type', 'raid_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_disks', 'minimum_disk_type', 'disk_types', 'type', '1.41', '1.41');
select "schema".add_foreign_key('virtual_disks', 'primary_minimum_disk_type', 'disk_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_disks', 'secondary_minimum_disk_type', 'disk_types', 'type', '1.36', '1.40');

\echo virtual_servers
select "schema".add_foreign_key('virtual_servers', 'server', 'servers', 'pkey', '1.36', null);
select "schema".add_foreign_key('virtual_servers', 'minimum_processor_type', 'processor_types', 'type', '1.41', null);
select "schema".add_foreign_key('virtual_servers', 'primary_minimum_processor_type', 'processor_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_servers', 'secondary_minimum_processor_type', 'processor_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_servers', 'minimum_processor_architecture', 'architectures', 'name', '1.36', null);
select "schema".add_foreign_key('virtual_servers', 'primary_physical_server', 'physical_servers', 'server', '1.36', '1.40');
select "schema".add_foreign_key('virtual_servers', 'secondary_physical_server', 'physical_servers', 'server', '1.36', '1.40');

\echo whois_history
select "schema".add_foreign_key('whois_history', 'accounting', 'businesses', 'accounting', '1.20', null);
