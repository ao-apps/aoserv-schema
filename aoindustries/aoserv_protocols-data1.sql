begin;
insert into aoserv_protocols values(
  '1.0a100',
  '2003-07-08',
  'Last release before API version support.'
);
insert into aoserv_protocols values(
  '1.0a101',
  '2003-07-15',
  'Multiple API version support added.
backup_reports table added.'
);
insert into aoserv_protocols values(
  '1.0a102',
  '2003-09-15',
  'Added mod_php support to Apache and private Apache instances.'
);
insert into aoserv_protocols values(
  '1.0a103',
  '2003-10-04',
  'Added businesses.can_see_prices.
Added httpd_servers.use_mod_perl.'
);
insert into aoserv_protocols values(
  '1.0a104',
  '2003-10-14',
  'Simplified monitoring info on net_binds to just monitoring_enabled.
Added monitoring_passwords to ao_servers table.
Improved protocol version support.'
);
insert into aoserv_protocols values(
  '1.0a105',
  '2003-10-21',
  'Added user control over net_binds.
Added protocols.is_user_service.
Added protocols.net_protocol.
Added failover_file_replications.max_bit_rate.
Added email_blacklists.
Converted distro_files.file_md5 to distro_files.file_md5_hi and distro_files.file_md5_lo.'
);
insert into aoserv_protocols values(
  '1.0a106',
  '2003-11-08',
  'Added email_blacklists.spamhaus_lists.'
);
insert into aoserv_protocols values(
  '1.0a107',
  '2003-11-10',
  'To support backing up Windows servers, make necessary columns of file_backups nullable.'
);
insert into aoserv_protocols values(
  '1.0a108',
  '2003-12-26',
  'ao_servers.emailmon_password is now nullable.
ao_servers.ftpmon_password is now nullable.
Added operating_system_versions.architecture.
Added operating_system_versions.is_aoserv_daemon_supported.
Added architectures.bits.
Removed servers.architecture.
Added servers.asset_label.
Modified syntax and protocol for add_business_server AOSH command, dropped support for previous versions.
Added distro_files.pkey.
Added distro_files.operating_system_version.
distro_files.path is no longer unique.
Added technology_versions.operating_system_version.'
);
insert into aoserv_protocols values(
  '1.0a109',
  '2004-01-14',
  'removed support for REMOVE_UNUSED_BACKUP_DATAS command.  Compatibly and silently ignored for previous versions of clients.
removed file_backup_stats.delete_unused_backup_data1
removed file_backup_stats.delete_unused_backup_data2'
);
insert into aoserv_protocols values(
  '1.0a110',
  '2004-02-10',
  'removed postgres_versions.default_port'
);
insert into aoserv_protocols values(
  '1.0a111',
  '2004-02-25',
  'added mysql_db_users.create_tmp_table_priv
added mysql_db_users.lock_tables_priv
added mysql_users.show_db_priv
added mysql_users.super_priv
added mysql_users.create_tmp_table_priv
added mysql_users.lock_tables_priv
added mysql_users.execute_priv
added mysql_users.repl_slave_priv
added mysql_users.repl_client_priv
added mysql_server_users.max_connections
added net_tcp_redirects'
);
insert into aoserv_protocols values(
  '1.0a112',
  '2004-03-19',
  'renamed net_devices.delete_redhat_route to net_devices.delete_route
added net_devices.network
added net_devices.broadcast'
);
insert into aoserv_protocols values(
  '1.0a113',
  '2004-03-22',
  'removed private_ftp_servers.ip_address
added private_ftp_servers.net_bind
added private_ftp_servers.allow_anonymous'
);
insert into aoserv_protocols values(
  '1.0a114',
  '2004-05-10',
  'changed interbase_databases.backup_retention to short
added interbase_databases.backup_level'
);
insert into aoserv_protocols values(
  '1.0a115',
  '2004-07-01',
  'added interbase_server_users.predisable_password'
);
insert into aoserv_protocols values(
  '1.0a116',
  '2004-09-20',
  'added email_attachment_types table
added email_attachment_blocks table'
);
insert into aoserv_protocols values(
  '1.0a117',
  '2004-11-10',
  'added backup_partitions.fill_order column'
);
insert into aoserv_protocols values(
  '1.0a118',
  '2004-11-28',
  'added business_administrators.can_switch_users
remove master_users.can_switch_users'
);
insert into aoserv_protocols values(
  '1.0a119',
  '2004-11-29',
  'added ao_servers.daemon_connect_bind'
);
insert into aoserv_protocols values(
  '1.0a120',
  '2005-02-20',
  'added email_sa_integration_modes
added linux_server_accounts.junk_email_retention
added linux_server_accounts.sa_integration_mode'
);
insert into aoserv_protocols values(
  '1.0a121',
  '2005-02-25',
  'added postgres_versions.minor_version'
);
insert into aoserv_protocols values(
  '1.0a122',
  '2005-03-18',
  'removed email_blacklists'
);
insert into aoserv_protocols values(
  '1.0a123',
  '2005-04-27',
  'removed limits
removed rates
removed service_levels
added package_categories
added package_definitions
added package_definition_limits
added packages.package_definition
added resources.singular_display_unit
added resources.plural_display_unit
added resources.per_unit
added transaction_types
changed monthly_charges.type to reference new transaction_types table
changed transactions.type to reference new transaction_types table
removed businesses.can_set_prices
removed httpd_servers.price
removed ip_addresses.price
removed packages.level
removed packages.rate
removed packages.user_limit
removed packages.additional_user_rate
removed packages.pop_limit
removed packages.additional_pop_rate
removed private_ftp_servers.price
removed resources.unit'
);
insert into aoserv_protocols values(
  '1.0a124',
  '2005-05-19',
  'added linux_server_accounts.sa_required_score'
);
insert into aoserv_protocols values(
  '1.0a125',
  '2005-05-20',
  'added tickets.assigned_to
added tickets.contact_emails
added tickets.contact_phone_numbers'
);
insert into aoserv_protocols values(
  '1.0a126',
  '2005-05-24',
  'removed tickets.package
added tickets.accounting
removed tickets.administrator
added tickets.created_by'
);
insert into aoserv_protocols values(
  '1.0a127',
  '2005-07-21',
  'added dns_zones.ttl
added dns_records.ttl'
);
insert into aoserv_protocols values(
  '1.0a128',
  '2005-12-01',
  'added net_devices.mac_address
changed transactions.apr_num to text type'
);
insert into aoserv_protocols values(
  '1.0a129',
  '2005-12-04',
  'added httpd_sites.awstats_skip_files'
);
insert into aoserv_protocols values(
  '1.0a130',
  '2005-12-16',
  'added httpd_servers.timeout'
);
insert into aoserv_protocols values(
  '1.1',
  '2006-02-13',
  'removed net_device_host_routes table
removed net_device_local_routes table
removed postgres_server_users.usesysid
removed postgres_servers.last_postgres_usesysid'
);
insert into aoserv_protocols values(
  '1.2',
  '2006-02-20',
  'added net_devices.max_bit_rate
added time_zones table
added ao_servers.time_zone'
);
insert into aoserv_protocols values(
  '1.3',
  '2006-02-23',
  'added operating_system_versions.sort_order'
);
insert into aoserv_protocols values(
  '1.4',
  '2006-03-11',
  'added mysql_servers table
removed mysql_backups.ao_server
added mysql_backups.mysql_server
removed mysql_hosts table
removed mysql_databases.ao_server
added mysql_databases.mysql_server
removed mysql_server_users.ao_server
added mysql_server_users.mysql_server
removed ao_servers.is_mysql
added technologies.pkey
added schema_tables.default_order_by
added mysql_db_users.create_view_priv
added mysql_db_users.show_view_priv
added mysql_db_users.create_routine_priv
added mysql_db_users.alter_routine_priv
added mysql_db_users.execute_priv
added mysql_users.create_view_priv
added mysql_users.show_view_priv
added mysql_users.create_routine_priv
added mysql_users.alter_routine_priv
added mysql_users.create_user_priv
added mysql_server_users.max_questions
added mysql_server_users.max_updates
added mysql_server_users.max_user_connections'
);
insert into aoserv_protocols values(
  '1.5',
  '2006-04-02',
  'added httpd_tomcat_data_sources table
added httpd_tomcat_parameters table'
);
insert into aoserv_protocols values(
  '1.6',
  '2006-05-01',
  'changed return type from boolean to int for is_linux_server_account_procmail_manual'
);
insert into aoserv_protocols values(
  '1.7',
  '2006-05-22',
  'added ao_servers.jilter_bind'
);
insert into aoserv_protocols values(
  '1.8',
  '2006-05-23',
  'added ao_servers.restrict_outbound_email'
);
insert into aoserv_protocols values(
  '1.9',
  '2006-05-29',
  'added failover_file_replications.use_compression
added aoserv_protocols.last_used'
);
insert into aoserv_protocols values(
  '1.10',
  '2006-06-06',
  'made tickets.admin_priority nullable and null by default'
);
insert into aoserv_protocols values(
  '1.11',
  '2006-07-03',
  'added ao_servers.daemon_connect_address'
);
commit;
