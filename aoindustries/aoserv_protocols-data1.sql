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
insert into aoserv_protocols values(
  '1.12',
  '2006-07-19',
  'added ao_servers.failover_batch_size'
);
insert into aoserv_protocols values(
  '1.13',
  '2006-07-20',
  'added ao_servers.retention'
);
insert into aoserv_protocols values(
  '1.14',
  '2006-07-26',
  'added failover_file_replications.connect_address'
);
insert into aoserv_protocols values(
  '1.15',
  '2006-09-20',
  'added failover_file_replications.enabled'
);
insert into aoserv_protocols values(
  '1.16',
  '2006-09-27',
  'added servers.minimum_power
added servers.maximum_power'
);
insert into aoserv_protocols values(
  '1.17',
  '2006-10-09',
  'added failover_file_replications.to_path
added failover_file_replications.chunk_always'
);
insert into aoserv_protocols values(
  '1.18',
  '2006-10-11',
  'added httpd_site_authenticated_locations table'
);
insert into aoserv_protocols values(
  '1.19',
  '2006-11-27',
  'added httpd_site_binds.redirect_to_primary_hostname'
);
insert into aoserv_protocols values(
  '1.20',
  '2007-02-04',
  'added whois_history table'
);
insert into aoserv_protocols values(
  '1.21',
  '2007-02-12',
  'added business_administrator_permissions table
added aoserv_permissions table'
);
insert into aoserv_protocols values(
  '1.22',
  '2007-03-20',
  'added failover_file_replications.connect_from'
);
insert into aoserv_protocols values(
  '1.23',
  '2007-05-01',
  'added encryption_keys table
added signup_request_options table
added signup_requests table'
);
insert into aoserv_protocols values(
  '1.24',
  '2007-05-13',
  'added packages.email_in_burst
added packages.email_in_rate
added packages.email_out_burst
added packages.email_out_rate
added packages.email_relay_burst
added packages.email_relay_rate'
);
insert into aoserv_protocols values(
  '1.25',
  '2007-05-15',
  'changed encryption_keys.recipient to encryption_keys.id
changed encryption_keys.use_signup_requests to encryption_keys.signup_signer
added encryption_keys.signup_recipient
changed encryption_keys.use_credit_cards to encryption_keys.credit_card_signer
added encryption_keys.credit_card_recipient'
);
insert into aoserv_protocols values(
  '1.26',
  '2007-05-24',
  'added server_farms.use_restricted_smtp_port'
);
insert into aoserv_protocols values(
  '1.27',
  '2007-06-08',
  'added postgres_versions.postgis_version
added postgres_databases.enable_postgis'
);
insert into aoserv_protocols values(
  '1.28',
  '2007-06-12',
  'added failover_mysql_replications table
added mysql_servers.package'
);
insert into aoserv_protocols values(
  '1.29',
  '2007-06-21',
  'updated credit_cards table to support new ao-credit-cards package
added credit_card_providers table to support new ao-credit-cards package
added credit_card_transactions table to support new ao-credit-cards package'
);
insert into aoserv_protocols values(
  '1.30',
  '2008-03-18',
  'updated ip_address.ping_monitor_enabled'
);
insert into aoserv_protocols values(
  '1.31',
  '2008-04-12',
  'removed backup_data table
removed backup_levels table
removed backup_partitions.device
removed backup_partitions.minimum_free_space
removed backup_partitions.desired_free_space
removed backup_partitions.fill_order
removed file_backups table
removed file_backup_devices table
removed file_backup_roots table
removed file_backup_stats table
removed file_paths table
removed interbase_backups table
removed mysql_backups table
removed postgres_backups table
removed cvs_repositories.backup_level
removed cvs_repositories.backup_retention
removed linux_server_accounts.cron_backup_level
removed linux_server_accounts.cron_backup_retention
removed linux_server_accounts.home_backup_level
removed linux_server_accounts.home_backup_retention
removed linux_server_accounts.inbox_backup_level
removed linux_server_accounts.inbox_backup_retention
removed httpd_shared_tomcats.config_backup_level
removed httpd_shared_tomcats.config_backup_retention
removed httpd_shared_tomcats.file_backup_level
removed httpd_shared_tomcats.file_backup_retention
removed httpd_shared_tomcats.log_backup_level
removed httpd_shared_tomcats.log_backup_retention
removed httpd_sites.config_backup_level
removed httpd_sites.config_backup_retention
removed httpd_sites.file_backup_level
removed httpd_sites.file_backup_retention
removed httpd_sites.ftp_backup_level
removed httpd_sites.ftp_backup_retention
removed httpd_sites.log_backup_level
removed httpd_sites.log_backup_retention
removed email_lists.backup_level
removed email_lists.backup_retention
removed interbase_databases.backup_level
removed interbase_databases.backup_retention
removed file_backup_settings.backup_level
added file_backup_settings.backup_enabled
removed file_backup_settings.backup_retention
removed mysql_databases.backup_level
removed mysql_databases.backup_retention
removed postgres_databases.backup_level
removed postgres_databases.backup_retention
removed majordomo_servers.backup_level
removed majordomo_servers.backup_retention
removed servers.backup_hour
removed servers.last_backup_time
removed server_farms.protected_net
removed server_farms.allow_same_server_backup
removed server_farms.backup_farm
removed server_reports table
removed sr_cpu table
removed sr_db_mysql table
removed sr_db_postgres table
removed sr_disk_access table
removed sr_disk_mdstat table
removed sr_disk_space table
removed sr_kernel table
removed sr_load table
removed sr_memory table
removed sr_net_devices table
removed sr_net_icmp table
removed sr_net_ip table
removed sr_net_tcp table
removed sr_net_udp table
removed sr_num_users table
removed sr_paging table
removed sr_processes table
removed sr_swap_rate table
removed sr_swap_size table
removed sendmail_smtp_stats table
removed interbase_databases table
removed interbase_db_groups table
removed interbase_reserved_words table
removed interbase_server_users table
removed interbase_users table
removed packages.daily_smtp_in_limit
removed packages.daily_smtp_in_bandwidth_limit
removed packages.daily_smtp_out_limit
removed packages.daily_smtp_out_bandwidth_limit
removed ao_servers.num_cpu
removed ao_servers.cpu_speed
removed ao_servers.ram
removed ao_servers.rack
removed ao_servers.disk
removed ao_servers.wildcard_https
removed ao_servers.is_interbase
removed ao_servers.is_dns
removed ao_servers.is_router
removed ao_servers.iptables_name
removed ao_servers.server_report_delay
removed ao_servers.server_report_interval
removed ao_servers.is_qmail
removed ao_servers.xeroscape_name
removed ao_servers.value
removed ao_servers.monitoring_enabled
removed ao_servers.emailmon_password
removed ao_servers.ftpmon_password
removed servers.owner
removed servers.administrator
removed servers.asset_label
removed servers.minimum_power
removed servers.maximum_power
removed servers.hostname
added servers.package
added servers.name (unique per package)
added ao_servers.hostname
removed business_servers.can_control_interbase
removed AOSH command set_httpd_shared_tomcat_config_backup_retention
removed AOSH command set_httpd_shared_tomcat_file_backup_retention
removed AOSH command set_httpd_shared_tomcat_log_backup_retention
removed AOSH command set_linux_server_account_cron_backup_retention
removed AOSH command set_linux_server_account_home_backup_retention
removed AOSH command set_linux_server_account_inbox_backup_retention
removed AOSH command set_httpd_site_config_backup_retention
removed AOSH command set_httpd_site_file_backup_retention
removed AOSH command set_httpd_site_ftp_backup_retention
removed AOSH command set_httpd_site_log_backup_retention
removed AOSH command set_cvs_repository_backup_retention
removed AOSH command set_email_list_backup_retention
removed AOSH command set_majordomo_server_backup_retention
removed AOSH command set_mysql_database_backup_retention
removed AOSH command set_postgres_database_backup_retention
removed AOSH command backup_mysql_database
removed AOSH command backup_interbase_database
removed AOSH command backup_postgres_database
removed AOSH command restart_interbase
removed AOSH command start_interbase
removed AOSH command stop_interbase
removed AOSH command get_backup_data
removed AOSH command get_file_backup
removed AOSH command remove_file_backup
removed AOSH command add_file_backup_device
removed AOSH command get_interbase_backup
removed AOSH command remove_interbase_backup
removed AOSH command get_mysql_backup
removed AOSH command remove_mysql_backup
removed AOSH command get_postgres_backup
removed AOSH command remove_postgres_backup
removed AOSH command add_sendmail_smtp_stat
removed AOSH command add_interbase_database
removed AOSH command check_interbase_database_name
removed AOSH command dump_interbase_database
removed AOSH command generate_interbase_database_name
removed AOSH command is_interbase_database_name_available
removed AOSH command remove_interbase_database
removed AOSH command add_interbase_db_group
removed AOSH command check_interbase_db_group_name
removed AOSH command generate_interbase_db_group_name
removed AOSH command is_interbase_db_group_name_available
removed AOSH command remove_interbase_db_group
removed AOSH command add_interbase_server_user
removed AOSH command disable_interbase_server_user
removed AOSH command enable_interbase_server_user
removed AOSH command is_interbase_server_user_password_set
removed AOSH command remove_interbase_server_user
removed AOSH command set_interbase_server_user_password
removed AOSH command add_interbase_user
removed AOSH command are_interbase_user_passwords_set
removed AOSH command check_interbase_password
removed AOSH command check_interbase_username
removed AOSH command disable_interbase_user
removed AOSH command enable_interbase_user
removed AOSH command remove_interbase_user
removed AOSH command set_interbase_user_password
removed AOSH command wait_for_interbase_rebuild
removed file_backup_settings.package
removed business_servers.can_configure_backup
deleted from aoserv_permissions: set_interbase_server_user_password
updated AOSH command add_file_backup_setting
updated AOSH command set_file_backup_setting
updated AOSH command remove_file_backup_setting
updated AOSH command add_business_server
updated AOSH command invalidate
updated AOSH command invalidate ao_servers.hostname, servers.package.name||\'/\'||servers.name, or servers.pkey
removed file_backup_settings.recurse
removed failover_file_replications.from_server
added failover_file_replications.server
removed failover_file_replications.to_server
removed failover_file_replications.to_path
added failover_file_replications.backup_partition
removed failover_file_replications.last_start_time
removed failover_file_replications.chunk_always
added failover_file_replications.quota_gid
added backup_partitions.quota_enabled
added failover_file_schedule.minute
removed file_backup_settings.server
added file_backup_settings.replication
removed schema_table.default_order_by because there is not an easy way to provide cross-version compatibility
removed schema_table.dataverse_editor
removed schema_foreign_keys.is_bridge
removed schema_foreign_keys.tied_bridge
renamed email_lists.linux_account to linux_server_account
renamed email_lists.linux_group to linux_server_group
renamed mysql_db_users.mysql_user to mysql_server_user
removed phone_numbers table
removed linux_acc_addresses.linux_account
added linux_acc_addresses.linux_server_account
added signup_requests.encryption_recipient
removed signup_requests.encryption_key
added signup_requests.encryption_from
removed encryption_keys.credit_card_signer
removed encryption_keys.credit_card_recipient
removed encryption_keys.signup_signer
added encryption_keys.signup_from
added credit_card_processors.encryption_from
added credit_card_processors.encryption_recipient
added credit_cards.encrypted_card_number
added credit_cards.encryption_card_number_from
added credit_cards.encryption_card_number_recipient
added credit_cards.encrypted_card_expiration
added credit_cards.encrypted_expiration
added credit_cards.encryption_expiration_from
added credit_cards.encryption_expiration_recipient
removed backup_reports.uncompressed_size
removed backup_reports.compressed_size
removed daemon_profile.server
added daemon_profile.ao_server'
);
insert into aoserv_protocols values(
  '1.32',
  '2008-06-28',
  'added servers.monitoring_enabled'
);
insert into aoserv_protocols values(
  '1.33',
  '2008-08-15',
  'renamed net_devices.ao_server to server, references servers instead of ao_servers
renamed net_binds.ao_server to server, references servers instead of ao_servers'
);
insert into aoserv_protocols values(
  '1.34',
  '2008-08-17',
  'added ip_addresses.external_ip_address'
);
insert into aoserv_protocols values(
  '1.35',
  '2008-10-24',
  'added ao_servers.monitoring_load_low
added ao_servers.monitoring_load_medium
added ao_servers.monitoring_load_high
added ao_servers.monitoring_load_critical
added net_devices.monitoring_bit_rate_low
added net_devices.monitoring_bit_rate_medium
added net_devices.monitoring_bit_rate_high
added net_devices.monitoring_bit_rate_critical'
);
insert into aoserv_protocols values(
  '1.36',
  '2008-11-15',
  'added disk_types table
added physical_servers table
added processor_types table
added racks table
added raid_types table
added virtual_disks table
added virtual_servers table'
);
insert into aoserv_protocols values(
  '1.37',
  '2008-11-16',
  'added physical_servers.supports_hvm
added virtual_servers.requires_hvm'
);
insert into aoserv_protocols values(
  '1.38',
  '2008-11-30',
  'removed net_devices.netmask
added ip_addresses.netmask'
);
insert into aoserv_protocols values(
  '1.39',
  '2008-12-01',
  'removed private_ftp_servers.root
removed private_ftp_servers.linux_server_group'
);
insert into aoserv_protocols values(
  '1.40',
  '2008-12-09',
  'added linux_server_accounts.sa_discard_score'
);
insert into aoserv_protocols values(
  '1.41',
  '2009-03-12',
  'renamed virtual_servers.primary_minimum_processor_type to minimum_processor_type
removed virtual_servers.secondary_minimum_processor_type
renamed virtual_servers.primary_minimum_processor_speed to minimum_processor_speed
removed virtual_servers.secondary_minimum_processor_speed
renamed virtual_servers.primary_processor_cores to processor_cores
removed virtual_servers.secondary_processor_cores
renamed virtual_servers.primary_processor_weight to processor_weight
removed virtual_servers.secondary_processor_weight
removed virtual_servers.primary_physical_server
removed virtual_servers.secondary_physical_server
renamed virtual_disks.primary_minimum_raid_type to minimum_raid_type
removed virtual_disks.secondary_minimum_raid_type
renamed virtual_disks.primary_minimum_disk_type to minimum_disk_type
removed virtual_disks.secondary_minimum_disk_type
renamed virtual_disks.primary_minimum_disk_speed to minimum_disk_speed
removed virtual_disks.secondary_minimum_disk_speed
renamed virtual_disks.primary_weight to weight
removed virtual_disks.secondary_weight'
);
insert into aoserv_protocols values(
  '1.42',
  '2009-03-15',
  'removed virtual_disks.minimum_raid_type
removed virtual_disks.minimum_disk_type
removed disk_types
removed raid_types'
);
insert into aoserv_protocols values(
  '1.43',
  '2009-03-18',
  'added virtual_servers.primary_ram_target
added virtual_servers.secondary_ram_target
added virtual_servers.minimum_processor_speed_target
added virtual_servers.processor_cores_target
added virtual_servers.processor_weight_target
added virtual_disks.minimum_disk_speed_target
added virtual_disks.weight_target
removed virtual_disks.primary_physical_volumes_locked
removed virtual_disks.secondary_physical_volumes_locked'
);
insert into aoserv_protocols values(
  '1.44',
  '2009-05-16',
  'removed actions table
added ticket_actions table
removed action_types table
added ticket_action_types table
added brands table
added languages table
added resellers table
added ticket_assignments table
added ticket_brand_categories table
added ticket_categories table
added business_administrators.support_code
removed master_users.is_ticket_admin
removed package_definitions.accounting
added package_definitions.brand
removed signup_requests.accounting
added signup_requests.brand
removed ticket_stati.description
added ticket_stati.sort_order
removed ticket_types.description
removed ticket_types.client_view
added tickets.reseller
added tickets.language
added tickets.category
added tickets.from_address
added tickets.summary
made tickets.details nullable
added tickets.raw_email
removed tickets.deadline
removed tickets.close_date
removed tickets.closed_by
removed tickets.technology
removed tickets.assigned_to
added tickets.status_timeout
added tickets.internal_notes
removed encryption_keys.signup_from
removed encryption_keys.signup_recipient
removed GET_OBJECT(actions) command
removed GET_ACTIONS_TICKET command
removed GET_ACTIONS_BUSINESS_ADMINISTRATOR command
removed GET_CACHED_ROW_COUNT(actions) command
removed GET_ROW_COUNT(actions) command
removed GET_CACHED_ROW_COUNT(tickets) command
removed GET_ROW_COUNT(tickets) command
removed GET_OBJECT(tickets) command
removed GET_TICKETS_BUSINESS_ADMINISTRATOR command
removed GET_TICKETS_BUSINESS command
removed GET_TICKETS_CREATED_BUSINESS_ADMINISTRATOR command
removed GET_TICKETS_CLOSED_BUSINESS_ADMINISTRATOR command
removed change_ticket_deadline AOSH command
removed change_ticket_technology AOSH command
updated add_business_administrator command
removed ticket-related AOSH commands'
);
insert into aoserv_protocols values(
  '1.45',
  '2009-06-11',
  'removed package_definitions.brand
added package_definitions.accounting'
);
insert into aoserv_protocols values(
  '1.46',
  '2009-06-12',
  'added tickets.brand
added brands.smtp_host
added brands.imap_host'
);
commit;
