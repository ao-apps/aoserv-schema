create or replace function get_schema_column (text,text,text,text)
  returns integer
  as '
    select
      sc.pkey
    from
      schema_columns sc
      inner join aoserv_protocols since on sc.since_version=since.version
      left outer join aoserv_protocols last on sc.last_version=last.version
    where
      sc.table_name = $1
      and sc.column_name = $2
      and (select created from aoserv_protocols where version= $3 )>=since.created
      and (
        case when $4 is null then (select created from aoserv_protocols order by created desc limit 1) else (select created from aoserv_protocols where version= $4 ) end
        <=
        case when last.version is null then (select created from aoserv_protocols order by created desc limit 1) else last.created end
      )
    ;
  '
  language 'sql'
;

create or replace function add_schema_foreign_key (text,text,text,text,bool,text,text)
  returns integer
  as '
    insert into schema_foreign_keys(
      key_column,
      foreign_column,
      is_bridge,
      since_version,
      last_version
    ) values(
      get_schema_column( $1 , $2 , $6 , $7 ),
      get_schema_column( $3 , $4 , $6 , $7 ),
      $5 ,
      $6 ,
      $7
    );
    select pkey from schema_foreign_keys
    where
      key_column=get_schema_column( $1 , $2 , $6 , $7 )
      and foreign_column=get_schema_column( $3 , $4 , $6 , $7 )
    ;
  '
  language 'sql'
;

select setval('schema_foreign_keys_pkey_seq', 1, false);
begin;
\echo actions
select add_schema_foreign_key('actions', 'ticket_id', 'tickets', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('actions', 'administrator', 'business_administrators', 'username', true, '1.0a100', null);
select add_schema_foreign_key('actions', 'action_type', 'action_types', 'type', false, '1.0a100', null);
commit;
begin;
\echo ao_server_daemon_hosts
select add_schema_foreign_key('ao_server_daemon_hosts', 'ao_server', 'ao_servers', 'server', false, '1.0a100', null);
commit;
begin;
\echo ao_servers
select add_schema_foreign_key('ao_servers', 'server', 'servers', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('ao_servers', 'daemon_bind', 'net_binds', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('ao_servers', 'failover_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('ao_servers', 'daemon_device_id', 'net_device_ids', 'name', false, '1.0a100', null);
select add_schema_foreign_key('ao_servers', 'daemon_connect_bind', 'net_binds', 'pkey', false, '1.0a119', null);
select add_schema_foreign_key('ao_servers', 'time_zone', 'time_zones', 'name', false, '1.2', null);
select add_schema_foreign_key('ao_servers', 'jilter_bind', 'net_binds', 'pkey', false, '1.7', null);
commit;
begin;
\echo aosh_commands
select add_schema_foreign_key('aosh_commands', 'table_name', 'schema_tables', 'name', false, '1.0a100', null);
select add_schema_foreign_key('aosh_commands', 'since_version', 'aoserv_protocols', 'version', false, '1.0a101', null);
select add_schema_foreign_key('aosh_commands', 'last_version', 'aoserv_protocols', 'version', false, '1.0a102', null);
commit;
begin;
\echo backup_data
select add_schema_foreign_key('backup_data', 'backup_partition', 'backup_partitions', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo backup_partitions
select add_schema_foreign_key('backup_partitions', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
commit;
begin;
\echo backup_reports
select add_schema_foreign_key('backup_reports', 'server', 'servers', 'pkey', true, '1.0a101', null);
select add_schema_foreign_key('backup_reports', 'package', 'packages', 'pkey', true, '1.0a101', null);
commit;
begin;
\echo bank_accounts
select add_schema_foreign_key('bank_accounts', 'bank', 'banks', 'name', false, '1.0a100', null);
commit;
begin;
\echo bank_transactions
select add_schema_foreign_key('bank_transactions', 'bank_account', 'bank_accounts', 'name', false, '1.0a100', null);
select add_schema_foreign_key('bank_transactions', 'merchant_account', 'merchant_accounts', 'name', false, '1.0a100', null);
select add_schema_foreign_key('bank_transactions', 'administrator', 'master_users', 'username', false, '1.0a100', null);
select add_schema_foreign_key('bank_transactions', 'type', 'bank_transaction_types', 'type', false, '1.0a100', null);
select add_schema_foreign_key('bank_transactions', 'expense_code', 'expense_categories', 'expense_code', false, '1.0a100', null);
commit;
begin;
\echo blackhole_email_addresses
select add_schema_foreign_key('blackhole_email_addresses', 'email_address', 'email_addresses', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo business_administrators
select add_schema_foreign_key('business_administrators', 'username', 'usernames', 'username', true, '1.0a100', null);
select add_schema_foreign_key('business_administrators', 'country', 'country_codes', 'code', false, '1.0a100', null);
select add_schema_foreign_key('business_administrators', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo business_administrator_permissions
select add_schema_foreign_key('business_administrator_permissions', 'username', 'business_administrators', 'username', true, '1.21', null);
select add_schema_foreign_key('business_administrator_permissions', 'permission', 'aoserv_permissions', 'name', true, '1.21', null);
commit;
begin;
\echo business_profiles
select add_schema_foreign_key('business_profiles', 'accounting', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('business_profiles', 'country', 'country_codes', 'code', false, '1.0a100', null);
commit;
begin;
\echo businesses
select add_schema_foreign_key('businesses', 'parent', 'businesses', 'accounting', false, '1.0a100', null);
select add_schema_foreign_key('businesses', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo business_servers
select add_schema_foreign_key('business_servers', 'accounting', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('business_servers', 'server', 'servers', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo credit_cards
select add_schema_foreign_key('credit_cards', 'accounting', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('credit_cards', 'created_by', 'business_administrators', 'username', false, '1.0a100', null);
commit;
begin;
\echo cvs_repositories
select add_schema_foreign_key('cvs_repositories', 'linux_server_account', 'linux_server_accounts', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('cvs_repositories', 'linux_server_group', 'linux_server_groups', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('cvs_repositories', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('cvs_repositories', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('cvs_repositories', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo daemon_profile
select add_schema_foreign_key('daemon_profile', 'server', 'servers', 'hostname', false, '1.0a100', null);
commit;
begin;
\echo disable_log
select add_schema_foreign_key('disable_log', 'disabled_by', 'business_administrators', 'username', false, '1.0a100', null);
select add_schema_foreign_key('disable_log', 'accounting', 'businesses', 'accounting', false, '1.0a100', null);
commit;
begin;
\echo distro_files
select add_schema_foreign_key('distro_files', 'operating_system_version', 'operating_system_versions', 'pkey', false, '1.0a108', null);
select add_schema_foreign_key('distro_files', 'type', 'distro_file_types', 'type', false, '1.0a100', null);
select add_schema_foreign_key('distro_files', 'linux_account', 'linux_accounts', 'username', false, '1.0a100', null);
select add_schema_foreign_key('distro_files', 'linux_group', 'linux_groups', 'name', false, '1.0a100', null);
commit;
begin;
\echo dns_records
select add_schema_foreign_key('dns_records', 'zone', 'dns_zones', 'zone', true, '1.0a100', null);
select add_schema_foreign_key('dns_records', 'type', 'dns_types', 'type', false, '1.0a100', null);
select add_schema_foreign_key('dns_records', 'dhcp_address', 'ip_addresses', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo dns_zones
select add_schema_foreign_key('dns_zones', 'package', 'packages', 'name', true, '1.0a100', null);
commit;
begin;
\echo email_addresses
select add_schema_foreign_key('email_addresses', 'domain', 'email_domains', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo email_attachment_blocks
select add_schema_foreign_key('email_attachment_blocks', 'linux_server_account', 'linux_server_accounts', 'pkey', true, '1.0a116', null);
select add_schema_foreign_key('email_attachment_blocks', 'extension', 'email_attachment_types', 'extension', false, '1.0a116', null);
commit;
begin;
\echo email_domains
select add_schema_foreign_key('email_domains', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('email_domains', 'package', 'packages', 'name', true, '1.0a100', null);
commit;
begin;
\echo email_forwarding
select add_schema_foreign_key('email_forwarding', 'email_address', 'email_addresses', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo email_list_addresses
select add_schema_foreign_key('email_list_addresses', 'email_address', 'email_addresses', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('email_list_addresses', 'email_list', 'email_lists', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo email_lists
select add_schema_foreign_key('email_lists', 'linux_account', 'linux_server_accounts', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('email_lists', 'linux_group', 'linux_server_groups', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('email_lists', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('email_lists', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('email_lists', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo email_pipe_addresses
select add_schema_foreign_key('email_pipe_addresses', 'email_address', 'email_addresses', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('email_pipe_addresses', 'email_pipe', 'email_pipes', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo email_pipes
select add_schema_foreign_key('email_pipes', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('email_pipes', 'package', 'packages', 'name', true, '1.0a100', null);
select add_schema_foreign_key('email_pipes', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo email_smtp_relays
select add_schema_foreign_key('email_smtp_relays', 'package', 'packages', 'name', false, '1.0a100', null);
select add_schema_foreign_key('email_smtp_relays', 'ao_server', 'ao_servers', 'server', false, '1.0a100', null);
select add_schema_foreign_key('email_smtp_relays', 'type', 'email_smtp_relay_types', 'name', false, '1.0a100', null);
select add_schema_foreign_key('email_smtp_relays', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo failover_file_log
select add_schema_foreign_key('failover_file_log', 'replication', 'failover_file_replications', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo failover_file_replications
select add_schema_foreign_key('failover_file_replications', 'from_server', 'ao_servers', 'server', false, '1.0a100', null);
select add_schema_foreign_key('failover_file_replications', 'to_server', 'ao_servers', 'server', false, '1.0a100', null);
select add_schema_foreign_key('failover_file_replications', 'retention', 'backup_retentions', 'days', false, '1.13', null);
commit;
begin;
\echo failover_file_schedule
select add_schema_foreign_key('failover_file_schedule', 'replication', 'failover_file_replications', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo file_backups
select add_schema_foreign_key('file_backups', 'server', 'servers', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('file_backups', 'device', 'file_backup_devices', 'pkey', false, '1.0a100', '1.0a106');
select add_schema_foreign_key('file_backups', 'device', 'file_backup_devices', 'pkey', false, '1.0a107', null);
select add_schema_foreign_key('file_backups', 'package', 'packages', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('file_backups', 'uid', 'linux_ids', 'id', false, '1.0a100', '1.0a106');
select add_schema_foreign_key('file_backups', 'uid', 'linux_ids', 'id', false, '1.0a107', null);
select add_schema_foreign_key('file_backups', 'gid', 'linux_ids', 'id', false, '1.0a100', '1.0a106');
select add_schema_foreign_key('file_backups', 'gid', 'linux_ids', 'id', false, '1.0a107', null);
select add_schema_foreign_key('file_backups', 'backup_data', 'backup_data', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('file_backups', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('file_backups', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
commit;
begin;
\echo file_backup_roots
select add_schema_foreign_key('file_backup_roots', 'server', 'servers', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('file_backup_roots', 'package', 'packages', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo file_backup_settings
select add_schema_foreign_key('file_backup_settings', 'server', 'servers', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('file_backup_settings', 'package', 'packages', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('file_backup_settings', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('file_backup_settings', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
commit;
begin;
\echo file_backup_stats
select add_schema_foreign_key('file_backup_stats', 'server', 'servers', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo ftp_guest_users
select add_schema_foreign_key('ftp_guest_users', 'username', 'linux_accounts', 'username', false, '1.0a100', null);
commit;
begin;
\echo httpd_binds
select add_schema_foreign_key('httpd_binds', 'net_bind', 'net_binds', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('httpd_binds', 'httpd_server', 'httpd_servers', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo httpd_jboss_sites
select add_schema_foreign_key('httpd_jboss_sites', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', true, '1.0a100', null);
select add_schema_foreign_key('httpd_jboss_sites', 'version', 'httpd_jboss_versions', 'version', true, '1.0a100', null);
select add_schema_foreign_key('httpd_jboss_sites', 'jnp_bind', 'net_binds', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('httpd_jboss_sites', 'webserver_bind', 'net_binds', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('httpd_jboss_sites', 'rmi_bind', 'net_binds', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('httpd_jboss_sites', 'hypersonic_bind', 'net_binds', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('httpd_jboss_sites', 'jmx_bind', 'net_binds', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo httpd_jboss_versions
select add_schema_foreign_key('httpd_jboss_versions', 'version', 'technology_versions', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('httpd_jboss_versions', 'tomcat_version', 'httpd_tomcat_versions', 'version', true, '1.0a100', null);
commit;
begin;
\echo httpd_jk_protocols
select add_schema_foreign_key('httpd_jk_protocols', 'protocol', 'protocols', 'protocol', false, '1.0a100', null);
commit;
begin;
\echo httpd_servers
select add_schema_foreign_key('httpd_servers', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('httpd_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', true, '1.0a102', null);
select add_schema_foreign_key('httpd_servers', 'linux_server_group', 'linux_server_groups', 'pkey', true, '1.0a102', null);
select add_schema_foreign_key('httpd_servers', 'mod_php_version', 'technology_versions', 'pkey', true, '1.0a102', null);
select add_schema_foreign_key('httpd_servers', 'package', 'packages', 'pkey', true, '1.0a102', null);
commit;
begin;
\echo httpd_shared_tomcats
select add_schema_foreign_key('httpd_shared_tomcats', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'version', 'httpd_tomcat_versions', 'version', true, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'linux_server_account', 'linux_server_accounts', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'linux_server_group', 'linux_server_groups', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'config_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'config_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'file_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'file_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'log_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'log_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'tomcat4_worker', 'httpd_workers', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('httpd_shared_tomcats', 'tomcat4_shutdown_port', 'net_binds', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo httpd_site_authenticated_locations
select add_schema_foreign_key('httpd_site_authenticated_locations', 'httpd_site', 'httpd_sites', 'pkey', false, '1.18', null);
commit;
begin;
\echo httpd_site_binds
select add_schema_foreign_key('httpd_site_binds', 'httpd_site', 'httpd_sites', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('httpd_site_binds', 'httpd_bind', 'httpd_binds', 'net_bind', true, '1.0a100', null);
select add_schema_foreign_key('httpd_site_binds', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo httpd_site_urls
select add_schema_foreign_key('httpd_site_urls', 'httpd_site_bind', 'httpd_site_binds', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo httpd_sites
select add_schema_foreign_key('httpd_sites', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'package', 'packages', 'name', true, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'linux_account', 'linux_accounts', 'username', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'linux_group', 'linux_groups', 'name', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'config_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'config_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'file_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'file_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'ftp_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'ftp_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'log_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'log_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('httpd_sites', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo httpd_static_sites
select add_schema_foreign_key('httpd_static_sites', 'httpd_site', 'httpd_sites', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo httpd_tomcat_contexts
select add_schema_foreign_key('httpd_tomcat_contexts', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', false, '1.0a100', null);
commit;
begin;
\echo httpd_tomcat_data_sources
select add_schema_foreign_key('httpd_tomcat_data_sources', 'tomcat_context', 'httpd_tomcat_contexts', 'pkey', false, '1.5', null);
commit;
begin;
\echo httpd_tomcat_parameters
select add_schema_foreign_key('httpd_tomcat_parameters', 'tomcat_context', 'httpd_tomcat_contexts', 'pkey', false, '1.5', null);
commit;
begin;
\echo httpd_tomcat_sites
select add_schema_foreign_key('httpd_tomcat_sites', 'httpd_site', 'httpd_sites', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('httpd_tomcat_sites', 'version', 'httpd_tomcat_versions', 'version', false, '1.0a100', null);
commit;
begin;
\echo httpd_tomcat_shared_sites
select add_schema_foreign_key('httpd_tomcat_shared_sites', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', true, '1.0a100', null);
select add_schema_foreign_key('httpd_tomcat_shared_sites', 'httpd_shared_tomcat', 'httpd_shared_tomcats', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo httpd_tomcat_std_sites
select add_schema_foreign_key('httpd_tomcat_std_sites', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', true, '1.0a100', null);
select add_schema_foreign_key('httpd_tomcat_std_sites', 'tomcat4_shutdown_port', 'net_binds', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo httpd_tomcat_versions
select add_schema_foreign_key('httpd_tomcat_versions', 'version', 'technology_versions', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo httpd_workers
select add_schema_foreign_key('httpd_workers', 'code', 'httpd_jk_codes', 'code', false, '1.0a100', null);
select add_schema_foreign_key('httpd_workers', 'net_bind', 'net_binds', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('httpd_workers', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', true, '1.0a100', null);
commit;
begin;
\echo incoming_payments
select add_schema_foreign_key('incoming_payments', 'transid', 'transactions', 'transid', true, '1.0a100', null);
commit;
begin;
\echo interbase_backups
select add_schema_foreign_key('interbase_backups', 'package', 'packages', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('interbase_backups', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('interbase_backups', 'backup_data', 'backup_data', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('interbase_backups', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('interbase_backups', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
commit;
begin;
\echo interbase_databases
select add_schema_foreign_key('interbase_databases', 'db_group', 'interbase_db_groups', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('interbase_databases', 'datdba', 'interbase_server_users', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('interbase_databases', 'backup_level', 'backup_levels', 'level', false, '1.0a114', null);
select add_schema_foreign_key('interbase_databases', 'backup_retention', 'backup_retentions', 'days', false, '1.0a114', null);
commit;
begin;
\echo interbase_db_groups
select add_schema_foreign_key('interbase_db_groups', 'linux_server_group', 'linux_server_groups', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo interbase_server_users
select add_schema_foreign_key('interbase_server_users', 'username', 'interbase_users', 'username', true, '1.0a100', null);
select add_schema_foreign_key('interbase_server_users', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('interbase_server_users', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo interbase_users
select add_schema_foreign_key('interbase_users', 'username', 'usernames', 'username', true, '1.0a100', null);
select add_schema_foreign_key('interbase_users', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo ip_addresses
select add_schema_foreign_key('ip_addresses', 'net_device', 'net_devices', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('ip_addresses', 'package', 'packages', 'name', true, '1.0a100', null);
commit;
begin;
\echo limits
select add_schema_foreign_key('limits', 'service_level', 'service_levels', 'name', true, '1.0a100', '1.0a122');
select add_schema_foreign_key('limits', 'resource', 'resources', 'name', true, '1.0a100', '1.0a122');
commit;
begin;
\echo linux_acc_addresses
select add_schema_foreign_key('linux_acc_addresses', 'email_address', 'email_addresses', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('linux_acc_addresses', 'linux_account', 'linux_accounts', 'username', true, '1.0a100', null);
commit;
begin;
\echo linux_accounts
select add_schema_foreign_key('linux_accounts', 'username', 'usernames', 'username', true, '1.0a100', null);
select add_schema_foreign_key('linux_accounts', 'shell', 'shells', 'path', false, '1.0a100', null);
select add_schema_foreign_key('linux_accounts', 'type', 'linux_account_types', 'name', false, '1.0a100', null);
select add_schema_foreign_key('linux_accounts', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo linux_group_accounts
select add_schema_foreign_key('linux_group_accounts', 'group_name', 'linux_groups', 'name', false, '1.0a100', null);
select add_schema_foreign_key('linux_group_accounts', 'username', 'linux_accounts', 'username', false, '1.0a100', null);
commit;
begin;
\echo linux_groups
select add_schema_foreign_key('linux_groups', 'type', 'linux_group_types', 'name', false, '1.0a100', null);
select add_schema_foreign_key('linux_groups', 'package', 'packages', 'name', true, '1.0a100', null);
commit;
begin;
\echo linux_server_accounts
select add_schema_foreign_key('linux_server_accounts', 'username', 'linux_accounts', 'username', true, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'uid', 'linux_ids', 'id', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'cron_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'cron_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'home_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'home_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'inbox_backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'inbox_backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'autoresponder_from', 'linux_acc_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('linux_server_accounts', 'sa_integration_mode', 'email_sa_integration_modes', 'name', false, '1.0a120', null);
commit;
begin;
\echo linux_server_groups
select add_schema_foreign_key('linux_server_groups', 'name', 'linux_groups', 'name', true, '1.0a100', null);
select add_schema_foreign_key('linux_server_groups', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('linux_server_groups', 'gid', 'linux_ids', 'id', false, '1.0a100', null);
commit;
begin;
\echo majordomo_lists
select add_schema_foreign_key('majordomo_lists', 'email_list', 'email_lists', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('majordomo_lists', 'majordomo_server', 'majordomo_servers', 'domain', true, '1.0a100', null);
select add_schema_foreign_key('majordomo_lists', 'listname_pipe_add', 'email_pipe_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_lists', 'listname_list_add', 'email_list_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_lists', 'owner_listname_add', 'email_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_lists', 'listname_owner_add', 'email_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_lists', 'listname_approval_add', 'email_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_lists', 'listname_request_pipe_add', 'email_pipe_addresses', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo majordomo_servers
select add_schema_foreign_key('majordomo_servers', 'domain', 'email_domains', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('majordomo_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_servers', 'linux_server_group', 'linux_server_groups', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_servers', 'version', 'majordomo_versions', 'version', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_servers', 'majordomo_pipe_address', 'email_pipe_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_servers', 'owner_majordomo_add', 'email_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_servers', 'majordomo_owner_add', 'email_addresses', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_servers', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('majordomo_servers', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
commit;
begin;
\echo master_hosts
select add_schema_foreign_key('master_hosts', 'username', 'master_users', 'username', true, '1.0a100', null);
commit;
begin;
\echo master_processes
select add_schema_foreign_key('master_processes', 'authenticated_user', 'business_administrators', 'username', false, '1.0a100', null);
select add_schema_foreign_key('master_processes', 'effective_user', 'business_administrators', 'username', false, '1.0a100', null);
select add_schema_foreign_key('master_processes', 'daemon_server', 'ao_servers', 'server', false, '1.0a100', null);
select add_schema_foreign_key('master_processes', 'aoserv_protocol', 'aoserv_protocols', 'version', false, '1.0a101', null);
commit;
begin;
\echo master_servers
select add_schema_foreign_key('master_servers', 'username', 'master_users', 'username', true, '1.0a100', null);
select add_schema_foreign_key('master_servers', 'server', 'servers', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo master_users
select add_schema_foreign_key('master_users', 'username', 'business_administrators', 'username', false, '1.0a100', null);
commit;
begin;
\echo merchant_accounts
select add_schema_foreign_key('merchant_accounts', 'bank_account', 'bank_accounts', 'name', false, '1.0a100', null);
commit;
begin;
\echo monthly_charges
select add_schema_foreign_key('monthly_charges', 'accounting', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('monthly_charges', 'package', 'packages', 'name', true, '1.0a100', null);
select add_schema_foreign_key('monthly_charges', 'type', 'rates', 'name', false, '1.0a100', '1.0a122');
select add_schema_foreign_key('monthly_charges', 'type', 'transaction_types', 'name', false, '1.0a123', null);
select add_schema_foreign_key('monthly_charges', 'created_by', 'business_administrators', 'username', false, '1.0a100', null);
commit;
begin;
\echo mysql_backups
select add_schema_foreign_key('mysql_backups', 'package', 'packages', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('mysql_backups', 'ao_server', 'ao_servers', 'server', true, '1.0a100', '1.3');
select add_schema_foreign_key('mysql_backups', 'mysql_server', 'mysql_servers', 'pkey', true, '1.4', null);
select add_schema_foreign_key('mysql_backups', 'backup_data', 'backup_data', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('mysql_backups', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('mysql_backups', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
commit;
begin;
\echo mysql_databases
select add_schema_foreign_key('mysql_databases', 'ao_server', 'ao_servers', 'server', true, '1.0a100', '1.3');
select add_schema_foreign_key('mysql_databases', 'mysql_server', 'mysql_servers', 'pkey', true, '1.4', null);
select add_schema_foreign_key('mysql_databases', 'package', 'packages', 'name', true, '1.0a100', null);
select add_schema_foreign_key('mysql_databases', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('mysql_databases', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
commit;
begin;
\echo mysql_db_users
select add_schema_foreign_key('mysql_db_users', 'mysql_database', 'mysql_databases', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('mysql_db_users', 'mysql_user', 'mysql_server_users', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo mysql_hosts
select add_schema_foreign_key('mysql_hosts', 'ao_server', 'ao_servers', 'server', false, '1.0a100', '1.3');
commit;
begin;
\echo mysql_server_users
select add_schema_foreign_key('mysql_server_users', 'username', 'mysql_users', 'username', true, '1.0a100', null);
select add_schema_foreign_key('mysql_server_users', 'ao_server', 'ao_servers', 'server', true, '1.0a100', '1.3');
select add_schema_foreign_key('mysql_server_users', 'mysql_server', 'mysql_servers', 'pkey', true, '1.4', null);
select add_schema_foreign_key('mysql_server_users', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo mysql_servers
select add_schema_foreign_key('mysql_servers', 'ao_server', 'ao_servers', 'server', true, '1.4', null);
select add_schema_foreign_key('mysql_servers', 'version', 'technology_versions', 'pkey', true, '1.4', null);
select add_schema_foreign_key('mysql_servers', 'net_bind', 'net_binds', 'pkey', false, '1.4', null);
commit;
begin;
\echo mysql_users
select add_schema_foreign_key('mysql_users', 'username', 'usernames', 'username', true, '1.0a100', null);
select add_schema_foreign_key('mysql_users', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo net_binds
select add_schema_foreign_key('net_binds', 'package', 'packages', 'name', true, '1.0a100', null);
select add_schema_foreign_key('net_binds', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('net_binds', 'ip_address', 'ip_addresses', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('net_binds', 'port', 'net_ports', 'port', false, '1.0a100', null);
select add_schema_foreign_key('net_binds', 'net_protocol', 'net_protocols', 'protocol', false, '1.0a100', null);
select add_schema_foreign_key('net_binds', 'app_protocol', 'protocols', 'protocol', false, '1.0a100', null);
select add_schema_foreign_key('net_binds', 'monitor_delay', 'net_monitoring_times', 'time', false, '1.0a100', '1.0a103');
commit;
begin;
\echo net_device_host_routes
select add_schema_foreign_key('net_device_host_routes', 'net_device', 'net_devices', 'pkey', false, '1.0a100', '1.0a130');
select add_schema_foreign_key('net_device_host_routes', 'connected_ao_server', 'ao_servers', 'server', false, '1.0a100', '1.0a130');
commit;
begin;
\echo net_device_local_routes
select add_schema_foreign_key('net_device_local_routes', 'net_device', 'net_devices', 'pkey', false, '1.0a100', '1.0a130');
commit;
begin;
\echo net_devices
select add_schema_foreign_key('net_devices', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('net_devices', 'device_id', 'net_device_ids', 'name', false, '1.0a100', null);
commit;
begin;
\echo net_tcp_redirects
select add_schema_foreign_key('net_tcp_redirects', 'net_bind', 'net_binds', 'pkey', true, '1.0a111', null);
select add_schema_foreign_key('net_tcp_redirects', 'destination_port', 'net_ports', 'port', false, '1.0a111', null);
commit;
begin;
\echo notice_log
select add_schema_foreign_key('notice_log', 'accounting', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('notice_log', 'notice_type', 'notice_types', 'type', false, '1.0a100', null);
select add_schema_foreign_key('notice_log', 'transid', 'transactions', 'transid', false, '1.0a100', null);
commit;
begin;
\echo operating_system_versions
select add_schema_foreign_key('operating_system_versions', 'operating_system', 'operating_systems', 'name', true, '1.0a100', null);
select add_schema_foreign_key('operating_system_versions', 'architecture', 'architectures', 'name', true, '1.0a108', null);
commit;
begin;
\echo package_definition_limits
select add_schema_foreign_key('package_definition_limits', 'package_definition', 'package_definitions', 'pkey', true, '1.0a123', null);
select add_schema_foreign_key('package_definition_limits', 'resource', 'resources', 'name', true, '1.0a123', null);
select add_schema_foreign_key('package_definition_limits', 'additional_transaction_type', 'transaction_types', 'name', true, '1.0a123', null);
commit;
begin;
\echo package_definitions
select add_schema_foreign_key('package_definitions', 'accounting', 'businesses', 'accounting', true, '1.0a123', null);
select add_schema_foreign_key('package_definitions', 'category', 'package_categories', 'name', true, '1.0a123', null);
select add_schema_foreign_key('package_definitions', 'setup_fee_transaction_type', 'transaction_types', 'name', true, '1.0a123', null);
select add_schema_foreign_key('package_definitions', 'monthly_rate_transaction_type', 'transaction_types', 'name', true, '1.0a123', null);
commit;
begin;
\echo packages
select add_schema_foreign_key('packages', 'accounting', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('packages', 'level', 'service_levels', 'name', false, '1.0a100', '1.0a122');
select add_schema_foreign_key('packages', 'created_by', 'business_administrators', 'username', false, '1.0a100', null);
select add_schema_foreign_key('packages', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo postgres_backups
select add_schema_foreign_key('postgres_backups', 'package', 'packages', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('postgres_backups', 'postgres_server', 'postgres_servers', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('postgres_backups', 'backup_data', 'backup_data', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('postgres_backups', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('postgres_backups', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
commit;
begin;
\echo postgres_databases
select add_schema_foreign_key('postgres_databases', 'postgres_server', 'postgres_servers', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('postgres_databases', 'datdba', 'postgres_server_users', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('postgres_databases', 'encoding', 'postgres_encodings', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('postgres_databases', 'backup_level', 'backup_levels', 'level', false, '1.0a100', null);
select add_schema_foreign_key('postgres_databases', 'backup_retention', 'backup_retentions', 'days', false, '1.0a100', null);
commit;
begin;
\echo postgres_encodings
select add_schema_foreign_key('postgres_encodings', 'postgres_version', 'postgres_versions', 'version', true, '1.0a100', null);
commit;
begin;
\echo postgres_server_users
select add_schema_foreign_key('postgres_server_users', 'username', 'postgres_users', 'username', true, '1.0a100', null);
select add_schema_foreign_key('postgres_server_users', 'postgres_server', 'postgres_servers', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('postgres_server_users', 'usesysid', 'linux_ids', 'id', false, '1.0a100', '1.0a130');
select add_schema_foreign_key('postgres_server_users', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo postgres_servers
select add_schema_foreign_key('postgres_servers', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
select add_schema_foreign_key('postgres_servers', 'version', 'postgres_versions', 'version', true, '1.0a100', null);
select add_schema_foreign_key('postgres_servers', 'net_bind', 'net_binds', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('postgres_servers', 'last_postgres_usesysid', 'linux_ids', 'id', false, '1.0a100', '1.0a130');
commit;
begin;
\echo postgres_users
select add_schema_foreign_key('postgres_users', 'username', 'usernames', 'username', true, '1.0a100', null);
select add_schema_foreign_key('postgres_users', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo postgres_versions
select add_schema_foreign_key('postgres_versions', 'version', 'technology_versions', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('postgres_versions', 'default_port', 'net_ports', 'port', false, '1.0a100', '1.0a109');
commit;
begin;
\echo private_ftp_servers
select add_schema_foreign_key('private_ftp_servers', 'ip_address', 'ip_addresses', 'pkey', true, '1.0a100', '1.0a112');
select add_schema_foreign_key('private_ftp_servers', 'net_bind', 'net_binds', 'pkey', true, '1.0a113', null);
select add_schema_foreign_key('private_ftp_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', true, '1.0a100', null);
select add_schema_foreign_key('private_ftp_servers', 'linux_server_group', 'linux_server_groups', 'pkey', true, '1.0a100', null);
commit;
begin;
\echo protocols
select add_schema_foreign_key('protocols', 'port', 'net_ports', 'port', false, '1.0a100', null);
select add_schema_foreign_key('protocols', 'net_protocol', 'net_protocols', 'protocol', false, '1.0a105', null);
commit;
begin;
\echo schema_columns
select add_schema_foreign_key('schema_columns', 'table_name', 'schema_tables', 'name', false, '1.0a100', null);
select add_schema_foreign_key('schema_columns', 'type', 'schema_types', 'type', false, '1.0a100', null);
select add_schema_foreign_key('schema_columns', 'since_version', 'aoserv_protocols', 'version', false, '1.0a101', null);
select add_schema_foreign_key('schema_columns', 'last_version', 'aoserv_protocols', 'version', false, '1.0a104', null);
commit;
begin;
\echo schema_foreign_keys
select add_schema_foreign_key('schema_foreign_keys', 'key_column', 'schema_columns', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('schema_foreign_keys', 'foreign_column', 'schema_columns', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('schema_foreign_keys', 'tied_bridge', 'schema_foreign_keys', 'pkey', false, '1.0a100', null);
select add_schema_foreign_key('schema_foreign_keys', 'since_version', 'aoserv_protocols', 'version', false, '1.0a101', null);
select add_schema_foreign_key('schema_foreign_keys', 'last_version', 'aoserv_protocols', 'version', false, '1.0a104', null);
commit;
begin;
\echo schema_tables
select add_schema_foreign_key('schema_tables', 'since_version', 'aoserv_protocols', 'version', false, '1.0a101', null);
select add_schema_foreign_key('schema_tables', 'last_version', 'aoserv_protocols', 'version', false, '1.0a104', null);
commit;
begin;
\echo sendmail_smtp_stats
select add_schema_foreign_key('sendmail_smtp_stats', 'package', 'packages', 'name', true, '1.0a100', null);
select add_schema_foreign_key('sendmail_smtp_stats', 'ao_server', 'ao_servers', 'server', true, '1.0a100', null);
commit;
begin;
\echo server_farms
select add_schema_foreign_key('server_farms', 'backup_farm', 'server_farms', 'name', false, '1.0a100', null);
select add_schema_foreign_key('server_farms', 'owner', 'packages', 'pkey', true, '1.0a102', null);
commit;
begin;
\echo server_reports
select add_schema_foreign_key('server_reports', 'ao_server', 'ao_servers', 'server', false, '1.0a100', null);
select add_schema_foreign_key('server_reports', 'failover_server', 'ao_servers', 'server', false, '1.0a100', null);
commit;
begin;
\echo servers
select add_schema_foreign_key('servers', 'farm', 'server_farms', 'name', true, '1.0a100', null);
select add_schema_foreign_key('servers', 'owner', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('servers', 'administrator', 'business_administrators', 'username', false, '1.0a100', null);
select add_schema_foreign_key('servers', 'architecture', 'architectures', 'name', false, '1.0a100', '1.0a107');
select add_schema_foreign_key('servers', 'operating_system_version', 'operating_system_versions', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo service_levels
select add_schema_foreign_key('service_levels', 'name', 'rates', 'name', true, '1.0a100', '1.0a122');
commit;
begin;
\echo spam_email_messages
select add_schema_foreign_key('spam_email_messages', 'email_relay', 'email_smtp_relays', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_cpu
select add_schema_foreign_key('sr_cpu', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_db_mysql
select add_schema_foreign_key('sr_db_mysql', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_db_postgres
select add_schema_foreign_key('sr_db_postgres', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_disk_access
select add_schema_foreign_key('sr_disk_access', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_disk_mdstat
select add_schema_foreign_key('sr_disk_mdstat', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_disk_space
select add_schema_foreign_key('sr_disk_space', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_kernel
select add_schema_foreign_key('sr_kernel', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_load
select add_schema_foreign_key('sr_load', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_memory
select add_schema_foreign_key('sr_memory', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_net_devices
select add_schema_foreign_key('sr_net_devices', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_net_icmp
select add_schema_foreign_key('sr_net_icmp', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_net_ip
select add_schema_foreign_key('sr_net_ip', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_net_tcp
select add_schema_foreign_key('sr_net_tcp', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_net_udp
select add_schema_foreign_key('sr_net_udp', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_num_users
select add_schema_foreign_key('sr_num_users', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_paging
select add_schema_foreign_key('sr_paging', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_processes
select add_schema_foreign_key('sr_processes', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_swap_rate
select add_schema_foreign_key('sr_swap_rate', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo sr_swap_size
select add_schema_foreign_key('sr_swap_size', 'server_report', 'server_reports', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo system_email_aliases
select add_schema_foreign_key('system_email_aliases', 'ao_server', 'ao_servers', 'server', false, '1.0a100', null);
commit;
begin;
\echo technologies
select add_schema_foreign_key('technologies', 'name', 'technology_names', 'name', true, '1.0a100', null);
select add_schema_foreign_key('technologies', 'class', 'technology_classes', 'name', true, '1.0a100', null);
commit;
begin;
\echo technology_versions
select add_schema_foreign_key('technology_versions', 'name', 'technology_names', 'name', true, '1.0a100', null);
select add_schema_foreign_key('technology_versions', 'owner', 'master_users', 'username', true, '1.0a100', null);
select add_schema_foreign_key('technology_versions', 'operating_system_version', 'operating_system_versions', 'pkey', true, '1.0a108', null);
commit;
begin;
\echo tickets
select add_schema_foreign_key('tickets', 'package', 'packages', 'name', true, '1.0a100', '1.0a125');
select add_schema_foreign_key('tickets', 'accounting', 'businesses', 'accounting', true, '1.0a126', null);
select add_schema_foreign_key('tickets', 'administrator', 'business_administrators', 'username', true, '1.0a100', '1.0a125');
select add_schema_foreign_key('tickets', 'created_by', 'business_administrators', 'username', true, '1.0a126', null);
select add_schema_foreign_key('tickets', 'ticket_type', 'ticket_types', 'type', false, '1.0a100', null);
select add_schema_foreign_key('tickets', 'closed_by', 'business_administrators', 'username', false, '1.0a100', null);
select add_schema_foreign_key('tickets', 'client_priority', 'ticket_priorities', 'priority', false, '1.0a100', null);
select add_schema_foreign_key('tickets', 'admin_priority', 'ticket_priorities', 'priority', false, '1.0a100', '1.9');
select add_schema_foreign_key('tickets', 'admin_priority', 'ticket_priorities', 'priority', false, '1.10', null);
select add_schema_foreign_key('tickets', 'technology', 'technology_names', 'name', true, '1.0a100', null);
select add_schema_foreign_key('tickets', 'status', 'ticket_stati', 'status', false, '1.0a100', null);
select add_schema_foreign_key('tickets', 'assigned_to', 'business_administrators', 'username', false, '1.0a125', null);
commit;
begin;
\echo transactions
select add_schema_foreign_key('transactions', 'accounting', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('transactions', 'source_accounting', 'businesses', 'accounting', true, '1.0a100', null);
select add_schema_foreign_key('transactions', 'username', 'business_administrators', 'username', true, '1.0a100', null);
select add_schema_foreign_key('transactions', 'type', 'rates', 'name', false, '1.0a100', '1.0a122');
select add_schema_foreign_key('transactions', 'type', 'transaction_types', 'name', false, '1.0a123', null);
select add_schema_foreign_key('transactions', 'payment_type', 'payment_types', 'name', false, '1.0a100', null);
select add_schema_foreign_key('transactions', 'merchant_account', 'merchant_accounts', 'name', false, '1.0a100', null);
commit;
begin;
\echo usernames
select add_schema_foreign_key('usernames', 'package', 'packages', 'name', true, '1.0a100', null);
select add_schema_foreign_key('usernames', 'disable_log', 'disable_log', 'pkey', false, '1.0a100', null);
commit;
begin;
\echo whois_history
select add_schema_foreign_key('whois_history', 'accounting', 'businesses', 'accounting', true, '1.20', null);
commit;

drop function add_schema_foreign_key (text,text,text,text,bool,text,text);
drop function get_schema_column (text,text,text,text);
