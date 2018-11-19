create or replace function "schema".add_foreign_key (
  "schema" name,
  "table" name,
  "column" name,
  "foreignSchema" name,
  "foreignTable" name,
  "foreignColumn" name,
  "sinceVersion" text,
  "lastVersion" text
)
returns integer
as '
  insert into "schema"."ForeignKey"(
    "column",
    "foreignColumn",
    "sinceVersion",
    "lastVersion"
  ) values(
    "schema".get_column_versioned($1, $2, $3, $7, $8),
    "schema".get_column_versioned($4, $5, $6, $7, $8),
    $7,
    $8
  ) returning id;
'
language 'sql';

create or replace function "schema".add_foreign_key (
  "table" name,
  "column" name,
  "foreignTable" name,
  "foreignColumn" name,
  "sinceVersion" text,
  "lastVersion" text
)
returns integer
as '
  select "schema".add_foreign_key (
    ''public'',
    $1,
    $2,
    ''public'',
    $3,
    $4,
    $5,
    $6
  );
'
language 'sql';

select setval('schema."ForeignKey_id_seq"', 1, false);

\echo actions
select "schema".add_foreign_key('actions', 'ticket_id', 'tickets', 'pkey', '1.0a100', '1.43');
select "schema".add_foreign_key('actions', 'administrator', 'business_administrators', 'username', '1.0a100', '1.43');
select "schema".add_foreign_key('actions', 'action_type', 'action_types', 'type', '1.0a100', '1.43');

\echo ao_server_daemon_hosts
select "schema".add_foreign_key('ao_server_daemon_hosts', 'ao_server', 'ao_servers', 'server', '1.0a100', null);

\echo ao_servers
select "schema".add_foreign_key('ao_servers', 'server', 'servers', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('ao_servers', 'daemon_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('ao_servers', 'failover_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('ao_servers', 'daemon_device_id', 'net_device_ids', 'name', '1.0a100', null);
select "schema".add_foreign_key('ao_servers', 'daemon_connect_bind', 'net_binds', 'pkey', '1.0a119', null);
select "schema".add_foreign_key('ao_servers', 'time_zone', 'time_zones', 'name', '1.2', null);
select "schema".add_foreign_key('ao_servers', 'jilter_bind', 'net_binds', 'pkey', '1.7', null);

\echo aosh_commands
select "schema".add_foreign_key('aosh_commands', 'table_name', 'schema_tables', 'name', '1.0a100', null);
select "schema".add_foreign_key('aosh_commands', 'since_version', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('aosh_commands', 'last_version', 'aoserv_protocols', 'version', '1.0a102', null);

\echo backup_data
select "schema".add_foreign_key('backup_data', 'backup_partition', 'backup_partitions', 'pkey', '1.0a100', '1.30');

\echo backup_partitions
select "schema".add_foreign_key('backup_partitions', 'ao_server', 'ao_servers', 'server', '1.0a100', null);

\echo backup_reports
select "schema".add_foreign_key('backup_reports', 'server', 'servers', 'pkey', '1.0a101', null);
select "schema".add_foreign_key('backup_reports', 'package', 'packages', 'pkey', '1.0a101', null);

\echo bank_accounts
select "schema".add_foreign_key('bank_accounts', 'bank', 'banks', 'name', '1.0a100', null);

\echo bank_transactions
select "schema".add_foreign_key('bank_transactions', 'bank_account', 'bank_accounts', 'name', '1.0a100', null);
select "schema".add_foreign_key('bank_transactions', 'merchant_account', 'merchant_accounts', 'name', '1.0a100', '1.28');
select "schema".add_foreign_key('bank_transactions', 'processor', 'credit_card_processors', 'provider_id', '1.29', null);
select "schema".add_foreign_key('bank_transactions', 'administrator', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('bank_transactions', 'type', 'bank_transaction_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('bank_transactions', 'expense_code', 'expense_categories', 'expense_code', '1.0a100', null);

\echo blackhole_email_addresses
select "schema".add_foreign_key('blackhole_email_addresses', 'email_address', 'email_addresses', 'pkey', '1.0a100', null);

\echo brands
select "schema".add_foreign_key('brands', 'accounting', 'businesses', 'accounting', '1.44', null);
select "schema".add_foreign_key('brands', 'smtp_linux_server_account', 'linux_server_accounts', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'imap_linux_server_account', 'linux_server_accounts', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'support_email_address', 'email_addresses', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'signup_email_address', 'email_addresses', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'ticket_encryption_from', 'encryption_keys', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'ticket_encryption_recipient', 'encryption_keys', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'signup_encryption_from', 'encryption_keys', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'signup_encryption_recipient', 'encryption_keys', 'pkey', '1.44', null);
select "schema".add_foreign_key('brands', 'aoweb_struts_vnc_bind', 'net_binds', 'pkey', '1.52', null);

\echo business_administrators
select "schema".add_foreign_key('business_administrators', 'username', 'usernames', 'username', '1.0a100', null);
select "schema".add_foreign_key('business_administrators', 'country', 'country_codes', 'code', '1.0a100', '1.68');
select "schema".add_foreign_key('business_administrators', 'country', 'country_codes', 'code', '1.69', null);
select "schema".add_foreign_key('business_administrators', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo business_administrator_permissions
select "schema".add_foreign_key('business_administrator_permissions', 'username', 'business_administrators', 'username', '1.21', null);
select "schema".add_foreign_key('business_administrator_permissions', 'permission', 'aoserv_permissions', 'name', '1.21', null);

\echo business_profiles
select "schema".add_foreign_key('business_profiles', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('business_profiles', 'country', 'country_codes', 'code', '1.0a100', '1.68');
select "schema".add_foreign_key('business_profiles', 'country', 'country_codes', 'code', '1.69', null);

\echo businesses
select "schema".add_foreign_key('businesses', 'parent', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('businesses', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo business_servers
select "schema".add_foreign_key('business_servers', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('business_servers', 'server', 'servers', 'pkey', '1.0a100', null);

\echo credit_card_processors
select "schema".add_foreign_key('credit_card_processors', 'accounting', 'businesses', 'accounting', '1.29', null);
select "schema".add_foreign_key('credit_card_processors', 'encryption_from', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('credit_card_processors', 'encryption_recipient', 'encryption_keys', 'pkey', '1.31', null);

\echo credit_card_transactions
select "schema".add_foreign_key('credit_card_transactions', 'accounting', 'businesses', 'accounting', '1.69', null);
select "schema".add_foreign_key('credit_card_transactions', 'authorization_username', 'business_administrators', 'username', '1.69', null);
select "schema".add_foreign_key('credit_card_transactions', 'capture_username', 'business_administrators', 'username', '1.69', null);
select "schema".add_foreign_key('credit_card_transactions', 'credit_card_accounting', 'businesses', 'accounting', '1.69', null);
select "schema".add_foreign_key('credit_card_transactions', 'credit_card_country_code', 'country_codes', 'code', '1.69', null);
select "schema".add_foreign_key('credit_card_transactions', 'credit_card_created_by', 'business_administrators', 'username', '1.69', null);
select "schema".add_foreign_key('credit_card_transactions', 'processor_id', 'credit_card_processors', 'provider_id', '1.69', null);
select "schema".add_foreign_key('credit_card_transactions', 'shipping_country_code', 'country_codes', 'code', '1.69', null);
select "schema".add_foreign_key('credit_card_transactions', 'void_username', 'business_administrators', 'username', '1.69', null);

\echo credit_cards
select "schema".add_foreign_key('credit_cards', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('credit_cards', 'processor_id', 'credit_card_processors', 'provider_id', '1.29', null);
select "schema".add_foreign_key('credit_cards', 'country_code', 'country_codes', 'code', '1.29', '1.68');
select "schema".add_foreign_key('credit_cards', 'country_code', 'country_codes', 'code', '1.69', null);
select "schema".add_foreign_key('credit_cards', 'created_by', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('credit_cards', 'encryption_card_number_from', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('credit_cards', 'encryption_card_number_recipient', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('credit_cards', 'encryption_expiration_from', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('credit_cards', 'encryption_expiration_recipient', 'encryption_keys', 'pkey', '1.31', null);

\echo cvs_repositories
select "schema".add_foreign_key('cvs_repositories', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('cvs_repositories', 'linux_server_group', 'linux_server_groups', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('cvs_repositories', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('cvs_repositories', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('cvs_repositories', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo cyrus_imapd_binds
select "schema".add_foreign_key('cyrus_imapd_binds', 'net_bind', 'net_binds', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('cyrus_imapd_binds', 'cyrus_imapd_server', 'cyrus_imapd_servers', 'ao_server', '1.81.10', null);
select "schema".add_foreign_key('cyrus_imapd_binds', 'certificate', 'ssl_certificates', 'pkey', '1.81.10', null);

\echo cyrus_imapd_servers
select "schema".add_foreign_key('cyrus_imapd_servers', 'ao_server', 'ao_servers', 'server', '1.81.10', null);
select "schema".add_foreign_key('cyrus_imapd_servers', 'sieve_net_bind', 'net_binds', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('cyrus_imapd_servers', 'certificate', 'ssl_certificates', 'pkey', '1.81.10', null);

\echo daemon_profile
select "schema".add_foreign_key('daemon_profile', 'server', 'servers', 'hostname', '1.0a100', '1.30');
select "schema".add_foreign_key('daemon_profile', 'ao_server', 'ao_servers', 'hostname', '1.31', '1.68');
select "schema".add_foreign_key('daemon_profile', 'ao_server', 'ao_servers', 'hostname', '1.69', '1.76');

\echo disable_log
select "schema".add_foreign_key('disable_log', 'disabled_by', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('disable_log', 'accounting', 'businesses', 'accounting', '1.0a100', null);

\echo distro_files
select "schema".add_foreign_key('distro_files', 'operating_system_version', 'operating_system_versions', 'pkey', '1.0a108', null);
select "schema".add_foreign_key('distro_files', 'type', 'distro_file_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('distro_files', 'linux_account', 'linux_accounts', 'username', '1.0a100', null);
select "schema".add_foreign_key('distro_files', 'linux_group', 'linux_groups', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('distro_files', 'linux_group', 'linux_groups', 'name', '1.80.0', null);

\echo dns_records
select "schema".add_foreign_key('dns_records', 'zone', 'dns_zones', 'zone', '1.0a100', null);
select "schema".add_foreign_key('dns_records', 'type', 'dns_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('dns_records', 'dhcp_address', 'ip_addresses', 'pkey', '1.0a100', '1.68');
select "schema".add_foreign_key('dns_records', 'dhcp_address', 'ip_addresses', 'pkey', '1.69', null);

\echo dns_zones
select "schema".add_foreign_key('dns_zones', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('dns_zones', 'package', 'packages', 'name', '1.80.0', null);

\echo email_addresses
select "schema".add_foreign_key('email_addresses', 'domain', 'email_domains', 'pkey', '1.0a100', null);

\echo email_attachment_blocks
select "schema".add_foreign_key('email_attachment_blocks', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.0a116', null);
select "schema".add_foreign_key('email_attachment_blocks', 'extension', 'email_attachment_types', 'extension', '1.0a116', null);

\echo email_domains
select "schema".add_foreign_key('email_domains', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('email_domains', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('email_domains', 'package', 'packages', 'name', '1.80.0', null);

\echo email_forwarding
select "schema".add_foreign_key('email_forwarding', 'email_address', 'email_addresses', 'pkey', '1.0a100', null);

\echo email_list_addresses
select "schema".add_foreign_key('email_list_addresses', 'email_address', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('email_list_addresses', 'email_list', 'email_lists', 'pkey', '1.0a100', null);

\echo email_lists
select "schema".add_foreign_key('email_lists', 'linux_account', 'linux_server_accounts', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('email_lists', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.31', null);
select "schema".add_foreign_key('email_lists', 'linux_group', 'linux_server_groups', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('email_lists', 'linux_server_group', 'linux_server_groups', 'pkey', '1.31', null);
select "schema".add_foreign_key('email_lists', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('email_lists', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('email_lists', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo email_pipe_addresses
select "schema".add_foreign_key('email_pipe_addresses', 'email_address', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('email_pipe_addresses', 'email_pipe', 'email_pipes', 'pkey', '1.0a100', null);

\echo email_pipes
select "schema".add_foreign_key('email_pipes', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('email_pipes', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('email_pipes', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('email_pipes', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo email_smtp_relays
select "schema".add_foreign_key('email_smtp_relays', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('email_smtp_relays', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('email_smtp_relays', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('email_smtp_relays', 'type', 'email_smtp_relay_types', 'name', '1.0a100', null);
select "schema".add_foreign_key('email_smtp_relays', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo email_smtp_smart_host_domains
select "schema".add_foreign_key('email_smtp_smart_host_domains', 'smart_host', 'email_smtp_smart_hosts', 'net_bind', '1.57', null);

\echo email_smtp_smart_hosts
select "schema".add_foreign_key('email_smtp_smart_hosts', 'net_bind', 'net_binds', 'pkey', '1.57', null);

\echo encryption_keys
select "schema".add_foreign_key('encryption_keys', 'accounting', 'businesses', 'accounting', '1.23', null);

\echo failover_file_log
select "schema".add_foreign_key('failover_file_log', 'replication', 'failover_file_replications', 'pkey', '1.0a100', null);

\echo failover_file_replications
select "schema".add_foreign_key('failover_file_replications', 'from_server', 'ao_servers', 'server', '1.0a100', '1.30');
select "schema".add_foreign_key('failover_file_replications', 'server', 'servers', 'pkey', '1.31', null);
select "schema".add_foreign_key('failover_file_replications', 'to_server', 'ao_servers', 'server', '1.0a100', '1.30');
select "schema".add_foreign_key('failover_file_replications', 'backup_partition', 'backup_partitions', 'pkey', '1.31', null);
select "schema".add_foreign_key('failover_file_replications', 'retention', 'backup_retentions', 'days', '1.13', null);
select "schema".add_foreign_key('failover_file_replications', 'quota_gid', 'linux_ids', 'id', '1.31', '1.68');
select "schema".add_foreign_key('failover_file_replications', 'quota_gid', 'linux_ids', 'id', '1.69', '1.80');

\echo failover_file_schedule
select "schema".add_foreign_key('failover_file_schedule', 'replication', 'failover_file_replications', 'pkey', '1.0a100', null);

\echo failover_mysql_replications
select "schema".add_foreign_key('failover_mysql_replications', 'ao_server', 'ao_servers', 'server', '1.59', null);
select "schema".add_foreign_key('failover_mysql_replications', 'replication', 'failover_file_replications', 'pkey', '1.28', '1.58');
select "schema".add_foreign_key('failover_mysql_replications', 'replication', 'failover_file_replications', 'pkey', '1.59', null);
select "schema".add_foreign_key('failover_mysql_replications', 'mysql_server', 'mysql_servers', 'pkey', '1.28', null);

\echo file_backups
select "schema".add_foreign_key('file_backups', 'server', 'servers', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('file_backups', 'device', 'file_backup_devices', 'pkey', '1.0a100', '1.0a106');
select "schema".add_foreign_key('file_backups', 'device', 'file_backup_devices', 'pkey', '1.0a107', '1.30');
select "schema".add_foreign_key('file_backups', 'package', 'packages', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('file_backups', 'uid', 'linux_ids', 'id', '1.0a100', '1.0a106');
select "schema".add_foreign_key('file_backups', 'uid', 'linux_ids', 'id', '1.0a107', '1.30');
select "schema".add_foreign_key('file_backups', 'gid', 'linux_ids', 'id', '1.0a100', '1.0a106');
select "schema".add_foreign_key('file_backups', 'gid', 'linux_ids', 'id', '1.0a107', '1.30');
select "schema".add_foreign_key('file_backups', 'backup_data', 'backup_data', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('file_backups', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('file_backups', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');

\echo file_backup_roots
select "schema".add_foreign_key('file_backup_roots', 'server', 'servers', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('file_backup_roots', 'package', 'packages', 'pkey', '1.0a100', '1.30');

\echo file_backup_settings
select "schema".add_foreign_key('file_backup_settings', 'server', 'servers', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('file_backup_settings', 'replication', 'failover_file_replications', 'pkey', '1.31', null);
select "schema".add_foreign_key('file_backup_settings', 'package', 'packages', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('file_backup_settings', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('file_backup_settings', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');

\echo file_backup_stats
select "schema".add_foreign_key('file_backup_stats', 'server', 'servers', 'pkey', '1.0a100', '1.30');

\echo firewalld_zones
select "schema".add_foreign_key('firewalld_zones', 'server', 'servers', 'pkey', '1.81.0', null);

\echo ftp_guest_users
select "schema".add_foreign_key('ftp_guest_users', 'username', 'linux_accounts', 'username', '1.0a100', null);

\echo httpd_binds
select "schema".add_foreign_key('httpd_binds', 'net_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_binds', 'httpd_server', 'httpd_servers', 'pkey', '1.0a100', null);

\echo httpd_jboss_sites
select "schema".add_foreign_key('httpd_jboss_sites', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'version', 'httpd_jboss_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'jnp_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'webserver_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'rmi_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'hypersonic_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'jmx_bind', 'net_binds', 'pkey', '1.0a100', null);

\echo httpd_jboss_versions
select "schema".add_foreign_key('httpd_jboss_versions', 'version', 'technology_versions', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_versions', 'tomcat_version', 'httpd_tomcat_versions', 'version', '1.0a100', null);

\echo httpd_jk_protocols
select "schema".add_foreign_key('httpd_jk_protocols', 'protocol', 'protocols', 'protocol', '1.0a100', null);

\echo httpd_servers
select "schema".add_foreign_key('httpd_servers', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('httpd_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.0a102', null);
select "schema".add_foreign_key('httpd_servers', 'linux_server_group', 'linux_server_groups', 'pkey', '1.0a102', null);
select "schema".add_foreign_key('httpd_servers', 'mod_php_version', 'technology_versions', 'pkey', '1.0a102', null);
select "schema".add_foreign_key('httpd_servers', 'package', 'packages', 'pkey', '1.0a102', null);

\echo httpd_shared_tomcats
select "schema".add_foreign_key('httpd_shared_tomcats', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('httpd_shared_tomcats', 'version', 'httpd_tomcat_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('httpd_shared_tomcats', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_shared_tomcats', 'linux_server_group', 'linux_server_groups', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_shared_tomcats', 'config_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_shared_tomcats', 'config_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_shared_tomcats', 'file_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_shared_tomcats', 'file_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_shared_tomcats', 'log_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_shared_tomcats', 'log_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_shared_tomcats', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_shared_tomcats', 'tomcat4_worker', 'httpd_workers', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_shared_tomcats', 'tomcat4_shutdown_port', 'net_binds', 'pkey', '1.0a100', null);

\echo httpd_site_authenticated_locations
select "schema".add_foreign_key('httpd_site_authenticated_locations', 'httpd_site', 'httpd_sites', 'pkey', '1.18', null);

\echo httpd_site_bind_headers
select "schema".add_foreign_key('httpd_site_bind_headers', 'httpd_site_bind', 'httpd_site_binds', 'pkey', '1.81.15', null);

\echo httpd_site_bind_redirects
select "schema".add_foreign_key('httpd_site_bind_redirects', 'httpd_site_bind', 'httpd_site_binds', 'pkey', '1.81.1', null);

\echo httpd_site_binds
select "schema".add_foreign_key('httpd_site_binds', 'httpd_site', 'httpd_sites', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_site_binds', 'httpd_bind', 'httpd_binds', 'net_bind', '1.0a100', null);
select "schema".add_foreign_key('httpd_site_binds', 'certificate', 'ssl_certificates', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('httpd_site_binds', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo httpd_site_urls
select "schema".add_foreign_key('httpd_site_urls', 'httpd_site_bind', 'httpd_site_binds', 'pkey', '1.0a100', null);

\echo httpd_sites
select "schema".add_foreign_key('httpd_sites', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('httpd_sites', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('httpd_sites', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('httpd_sites', 'linux_account', 'linux_accounts', 'username', '1.0a100', null);
select "schema".add_foreign_key('httpd_sites', 'linux_group', 'linux_groups', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('httpd_sites', 'linux_group', 'linux_groups', 'name', '1.80.0', null);
select "schema".add_foreign_key('httpd_sites', 'config_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_sites', 'config_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_sites', 'file_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_sites', 'file_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_sites', 'ftp_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_sites', 'ftp_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_sites', 'log_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_sites', 'log_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('httpd_sites', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_sites', 'php_version', 'technology_versions', 'pkey', '1.78', null);

\echo httpd_static_sites
select "schema".add_foreign_key('httpd_static_sites', 'httpd_site', 'httpd_sites', 'pkey', '1.0a100', null);

\echo httpd_tomcat_contexts
select "schema".add_foreign_key('httpd_tomcat_contexts', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);

\echo httpd_tomcat_data_sources
select "schema".add_foreign_key('httpd_tomcat_data_sources', 'tomcat_context', 'httpd_tomcat_contexts', 'pkey', '1.5', null);

\echo httpd_tomcat_parameters
select "schema".add_foreign_key('httpd_tomcat_parameters', 'tomcat_context', 'httpd_tomcat_contexts', 'pkey', '1.5', null);

\echo httpd_tomcat_site_jk_mounts
select "schema".add_foreign_key('httpd_tomcat_site_jk_mounts', 'httpd_tomcat_site', 'httpd_tomcat_sites', 'httpd_site', '1.81.6', null);

\echo httpd_tomcat_sites
select "schema".add_foreign_key('httpd_tomcat_sites', 'httpd_site', 'httpd_sites', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_tomcat_sites', 'version', 'httpd_tomcat_versions', 'version', '1.0a100', null);

\echo httpd_tomcat_shared_sites
select "schema".add_foreign_key('httpd_tomcat_shared_sites', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);
select "schema".add_foreign_key('httpd_tomcat_shared_sites', 'httpd_shared_tomcat', 'httpd_shared_tomcats', 'pkey', '1.0a100', null);

\echo httpd_tomcat_std_sites
select "schema".add_foreign_key('httpd_tomcat_std_sites', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);
select "schema".add_foreign_key('httpd_tomcat_std_sites', 'tomcat4_shutdown_port', 'net_binds', 'pkey', '1.0a100', null);

\echo httpd_tomcat_versions
select "schema".add_foreign_key('httpd_tomcat_versions', 'version', 'technology_versions', 'pkey', '1.0a100', null);

\echo httpd_workers
select "schema".add_foreign_key('httpd_workers', 'code', 'httpd_jk_codes', 'code', '1.0a100', null);
select "schema".add_foreign_key('httpd_workers', 'net_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_workers', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);

\echo incoming_payments
select "schema".add_foreign_key('incoming_payments', 'transid', 'transactions', 'transid', '1.0a100', '1.28');

\echo interbase_backups
select "schema".add_foreign_key('interbase_backups', 'package', 'packages', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_backups', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_backups', 'backup_data', 'backup_data', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_backups', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_backups', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');

\echo interbase_databases
select "schema".add_foreign_key('interbase_databases', 'db_group', 'interbase_db_groups', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_databases', 'datdba', 'interbase_server_users', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_databases', 'backup_level', 'backup_levels', 'level', '1.0a114', '1.30');
select "schema".add_foreign_key('interbase_databases', 'backup_retention', 'backup_retentions', 'days', '1.0a114', '1.30');

\echo interbase_db_groups
select "schema".add_foreign_key('interbase_db_groups', 'linux_server_group', 'linux_server_groups', 'pkey', '1.0a100', '1.30');

\echo interbase_server_users
select "schema".add_foreign_key('interbase_server_users', 'username', 'interbase_users', 'username', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_server_users', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_server_users', 'disable_log', 'disable_log', 'pkey', '1.0a100', '1.30');

\echo interbase_users
select "schema".add_foreign_key('interbase_users', 'username', 'usernames', 'username', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase_users', 'disable_log', 'disable_log', 'pkey', '1.0a100', '1.30');

\echo ip_addresses
select "schema".add_foreign_key('ip_addresses', 'net_device', 'net_devices', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('ip_addresses', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('ip_addresses', 'package', 'packages', 'name', '1.80.0', null);

\echo ip_reputation_limiter_limits
select "schema".add_foreign_key('ip_reputation_limiter_limits', 'limiter', 'ip_reputation_limiters', 'pkey', '1.66', null);

\echo ip_reputation_limiter_sets
select "schema".add_foreign_key('ip_reputation_limiter_sets', 'limiter', 'ip_reputation_limiters', 'pkey', '1.66', null);
select "schema".add_foreign_key('ip_reputation_limiter_sets', 'set',     'ip_reputation_sets',     'pkey', '1.66', null);

\echo ip_reputation_limiters
select "schema".add_foreign_key('ip_reputation_limiters', 'net_device', 'net_devices', 'pkey', '1.66', null);

\echo ip_reputation_set_hosts
select "schema".add_foreign_key('ip_reputation_set_hosts', 'set_fkey', 'ip_reputation_sets', 'pkey', '1.65', '1.65');
select "schema".add_foreign_key('ip_reputation_set_hosts', 'set',      'ip_reputation_sets', 'pkey', '1.66', null);

\echo ip_reputation_set_networks
select "schema".add_foreign_key('ip_reputation_set_networks', 'set_fkey', 'ip_reputation_sets', 'pkey', '1.65', '1.65');
select "schema".add_foreign_key('ip_reputation_set_networks', 'set',      'ip_reputation_sets', 'pkey', '1.66', null);

\echo ip_reputation_sets
select "schema".add_foreign_key('ip_reputation_sets', 'accounting', 'businesses', 'accounting', '1.65', null);

\echo limits
select "schema".add_foreign_key('limits', 'service_level', 'service_levels', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('limits', 'resource', 'resources', 'name', '1.0a100', '1.0a122');

\echo linux_acc_addresses
select "schema".add_foreign_key('linux_acc_addresses', 'email_address', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('linux_acc_addresses', 'linux_account', 'linux_accounts', 'username', '1.0a100', '1.30');
select "schema".add_foreign_key('linux_acc_addresses', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.31', null);

\echo linux_accounts
select "schema".add_foreign_key('linux_accounts', 'username', 'usernames', 'username', '1.0a100', null);
select "schema".add_foreign_key('linux_accounts', 'shell', 'shells', 'path', '1.0a100', null);
select "schema".add_foreign_key('linux_accounts', 'type', 'linux_account_types', 'name', '1.0a100', null);
select "schema".add_foreign_key('linux_accounts', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo linux_group_accounts
select "schema".add_foreign_key('linux_group_accounts', 'group_name', 'linux_groups', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('linux_group_accounts', 'group_name', 'linux_groups', 'name', '1.80.0', null);
select "schema".add_foreign_key('linux_group_accounts', 'username', 'linux_accounts', 'username', '1.0a100', null);
select "schema".add_foreign_key('linux_group_accounts', 'operating_system_version', 'operating_system_versions', 'pkey', '1.80.1', null);

\echo linux_groups
select "schema".add_foreign_key('linux_groups', 'type', 'linux_group_types', 'name', '1.0a100', null);
select "schema".add_foreign_key('linux_groups', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('linux_groups', 'package', 'packages', 'name', '1.80.0', null);

\echo linux_server_accounts
select "schema".add_foreign_key('linux_server_accounts', 'username', 'linux_accounts', 'username', '1.0a100', null);
select "schema".add_foreign_key('linux_server_accounts', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('linux_server_accounts', 'uid', 'linux_ids', 'id', '1.0a100', '1.68');
select "schema".add_foreign_key('linux_server_accounts', 'uid', 'linux_ids', 'id', '1.69', '1.80');
select "schema".add_foreign_key('linux_server_accounts', 'cron_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('linux_server_accounts', 'cron_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('linux_server_accounts', 'home_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('linux_server_accounts', 'home_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('linux_server_accounts', 'inbox_backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('linux_server_accounts', 'inbox_backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('linux_server_accounts', 'autoresponder_from', 'linux_acc_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('linux_server_accounts', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('linux_server_accounts', 'sa_integration_mode', 'email_sa_integration_modes', 'name', '1.0a120', null);

\echo linux_server_groups
select "schema".add_foreign_key('linux_server_groups', 'name', 'linux_groups', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('linux_server_groups', 'name', 'linux_groups', 'name', '1.80.0', null);
select "schema".add_foreign_key('linux_server_groups', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('linux_server_groups', 'gid', 'linux_ids', 'id', '1.0a100', '1.68');
select "schema".add_foreign_key('linux_server_groups', 'gid', 'linux_ids', 'id', '1.69', '1.80');

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

\echo merchant_accounts
select "schema".add_foreign_key('merchant_accounts', 'bank_account', 'bank_accounts', 'name', '1.0a100', '1.28');

\echo monthly_charges
select "schema".add_foreign_key('monthly_charges', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('monthly_charges', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('monthly_charges', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('monthly_charges', 'type', 'rates', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('monthly_charges', 'type', 'transaction_types', 'name', '1.0a123', null);
select "schema".add_foreign_key('monthly_charges', 'created_by', 'business_administrators', 'username', '1.0a100', null);

\echo mysql_backups
select "schema".add_foreign_key('mysql_backups', 'package', 'packages', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('mysql_backups', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.3');
select "schema".add_foreign_key('mysql_backups', 'mysql_server', 'mysql_servers', 'pkey', '1.4', '1.30');
select "schema".add_foreign_key('mysql_backups', 'backup_data', 'backup_data', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('mysql_backups', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('mysql_backups', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');

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

\echo mysql_hosts
select "schema".add_foreign_key('mysql_hosts', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.3');

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

\echo net_device_host_routes
select "schema".add_foreign_key('net_device_host_routes', 'net_device', 'net_devices', 'pkey', '1.0a100', '1.0a130');
select "schema".add_foreign_key('net_device_host_routes', 'connected_ao_server', 'ao_servers', 'server', '1.0a100', '1.0a130');

\echo net_device_local_routes
select "schema".add_foreign_key('net_device_local_routes', 'net_device', 'net_devices', 'pkey', '1.0a100', '1.0a130');

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

\echo postgres_backups
select "schema".add_foreign_key('postgres_backups', 'package', 'packages', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_backups', 'postgres_server', 'postgres_servers', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_backups', 'backup_data', 'backup_data', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_backups', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_backups', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');

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

\echo protocols
select "schema".add_foreign_key('protocols', 'port', 'net_ports', 'port', '1.0a100', '1.68');
select "schema".add_foreign_key('protocols', 'port', 'net_ports', 'port', '1.69', '1.80');
select "schema".add_foreign_key('protocols', 'net_protocol', 'net_protocols', 'protocol', '1.0a105', '1.80');

\echo racks
select "schema".add_foreign_key('racks', 'farm', 'server_farms', 'name', '1.36', null);

\echo resellers
select "schema".add_foreign_key('resellers', 'accounting', 'brands', 'accounting', '1.44', null);

\echo schema_columns
select "schema".add_foreign_key('schema_columns', 'table_name', 'schema_tables', 'name', '1.0a100', null);
select "schema".add_foreign_key('schema_columns', 'type', 'schema_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('schema_columns', 'since_version', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('schema_columns', 'last_version', 'aoserv_protocols', 'version', '1.0a104', null);

\echo schema_foreign_keys
select "schema".add_foreign_key('schema_foreign_keys', 'key_column', 'schema_columns', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('schema_foreign_keys', 'foreign_column', 'schema_columns', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('schema_foreign_keys', 'tied_bridge', 'schema_foreign_keys', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('schema_foreign_keys', 'since_version', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('schema_foreign_keys', 'last_version', 'aoserv_protocols', 'version', '1.0a104', null);

\echo schema_tables
select "schema".add_foreign_key('schema_tables', 'since_version', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('schema_tables', 'last_version', 'aoserv_protocols', 'version', '1.0a104', null);

\echo schema_types
select "schema".add_foreign_key('schema_types', 'since_version', 'aoserv_protocols', 'version', '1.69', null);
select "schema".add_foreign_key('schema_types', 'last_version', 'aoserv_protocols', 'version', '1.69', null);

\echo sendmail_smtp_stats
select "schema".add_foreign_key('sendmail_smtp_stats', 'package', 'packages', 'name', '1.0a100', '1.30');
select "schema".add_foreign_key('sendmail_smtp_stats', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.30');

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

\echo server_reports
select "schema".add_foreign_key('server_reports', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.30');
select "schema".add_foreign_key('server_reports', 'failover_server', 'ao_servers', 'server', '1.0a100', '1.30');

\echo servers
select "schema".add_foreign_key('servers', 'farm', 'server_farms', 'name', '1.0a100', null);
select "schema".add_foreign_key('servers', 'owner', 'businesses', 'accounting', '1.0a100', '1.30');
select "schema".add_foreign_key('servers', 'administrator', 'business_administrators', 'username', '1.0a100', '1.30');
select "schema".add_foreign_key('servers', 'architecture', 'architectures', 'name', '1.0a100', '1.0a107');
select "schema".add_foreign_key('servers', 'operating_system_version', 'operating_system_versions', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('servers', 'operating_system_version', 'operating_system_versions', 'pkey', '1.31', null);
select "schema".add_foreign_key('servers', 'package', 'packages', 'pkey', '1.31', null);

\echo service_levels
select "schema".add_foreign_key('service_levels', 'name', 'rates', 'name', '1.0a100', '1.0a122');

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

\echo sr_cpu
select "schema".add_foreign_key('sr_cpu', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_db_mysql
select "schema".add_foreign_key('sr_db_mysql', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_db_postgres
select "schema".add_foreign_key('sr_db_postgres', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_disk_access
select "schema".add_foreign_key('sr_disk_access', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_disk_mdstat
select "schema".add_foreign_key('sr_disk_mdstat', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_disk_space
select "schema".add_foreign_key('sr_disk_space', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_kernel
select "schema".add_foreign_key('sr_kernel', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_load
select "schema".add_foreign_key('sr_load', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_memory
select "schema".add_foreign_key('sr_memory', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_net_devices
select "schema".add_foreign_key('sr_net_devices', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_net_icmp
select "schema".add_foreign_key('sr_net_icmp', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_net_ip
select "schema".add_foreign_key('sr_net_ip', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_net_tcp
select "schema".add_foreign_key('sr_net_tcp', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_net_udp
select "schema".add_foreign_key('sr_net_udp', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_num_users
select "schema".add_foreign_key('sr_num_users', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_paging
select "schema".add_foreign_key('sr_paging', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_processes
select "schema".add_foreign_key('sr_processes', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_swap_rate
select "schema".add_foreign_key('sr_swap_rate', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

\echo sr_swap_size
select "schema".add_foreign_key('sr_swap_size', 'server_report', 'server_reports', 'pkey', '1.0a100', '1.30');

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

drop function "schema".add_foreign_key (name,name,name,name,text,text);
drop function "schema".add_foreign_key (name,name,name,name,name,name,text,text);

analyze "schema"."ForeignKey";
