/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

insert into "schema"."AoservProtocol" values(
  '1.0a100',
  '2003-07-08',
  'Last release before API version support.'
);
insert into "schema"."AoservProtocol" values(
  '1.0a101',
  '2003-07-15',
  'Multiple API version support added
added table backup_reports'
);
insert into "schema"."AoservProtocol" values(
  '1.0a102',
  '2003-09-15',
  'Added mod_php support to Apache and private Apache instances.'
);
insert into "schema"."AoservProtocol" values(
  '1.0a103',
  '2003-10-04',
  'added column businesses.can_see_prices.
added column httpd_servers.use_mod_perl.'
);
insert into "schema"."AoservProtocol" values(
  '1.0a104',
  '2003-10-14',
  'Simplified monitoring info on net_binds to just monitoring_enabled
added column ao_servers.monitoring_passwords
Improved protocol version support'
);
insert into "schema"."AoservProtocol" values(
  '1.0a105',
  '2003-10-21',
  'Added user control over net_binds.
added column protocols.is_user_service
added column protocols.net_protocol
added column failover_file_replications.max_bit_rate
added table email_blacklists
Converted distro_files.file_md5 to distro_files.file_md5_hi and distro_files.file_md5_lo.'
);
insert into "schema"."AoservProtocol" values(
  '1.0a106',
  '2003-11-08',
  'added column email_blacklists.spamhaus_lists.'
);
insert into "schema"."AoservProtocol" values(
  '1.0a107',
  '2003-11-10',
  'To support backing up Windows servers, make necessary columns of file_backups nullable.'
);
insert into "schema"."AoservProtocol" values(
  '1.0a108',
  '2003-12-26',
  'ao_servers.emailmon_password is now nullable.
ao_servers.ftpmon_password is now nullable.
added column operating_system_versions.architecture.
added column operating_system_versions.is_aoserv_daemon_supported.
added column architectures.bits.
removed column servers.architecture
added column servers.asset_label.
Modified syntax and protocol for add_business_server AOSH command, dropped support for previous versions.
added column distro_files.pkey.
added column distro_files.operating_system_version.
distro_files.path is no longer unique.
added column technology_versions.operating_system_version.'
);
insert into "schema"."AoservProtocol" values(
  '1.0a109',
  '2004-01-14',
  'removed support for REMOVE_UNUSED_BACKUP_DATAS command.  Compatibly and silently ignored for previous versions of clients.
removed column file_backup_stats.delete_unused_backup_data1
removed column file_backup_stats.delete_unused_backup_data2'
);
insert into "schema"."AoservProtocol" values(
  '1.0a110',
  '2004-02-10',
  'removed column postgres_versions.default_port'
);
insert into "schema"."AoservProtocol" values(
  '1.0a111',
  '2004-02-25',
  'added column mysql_db_users.create_tmp_table_priv
added column mysql_db_users.lock_tables_priv
added column mysql_users.show_db_priv
added column mysql_users.super_priv
added column mysql_users.create_tmp_table_priv
added column mysql_users.lock_tables_priv
added column mysql_users.execute_priv
added column mysql_users.repl_slave_priv
added column mysql_users.repl_client_priv
added column mysql_server_users.max_connections
added table net_tcp_redirects'
);
insert into "schema"."AoservProtocol" values(
  '1.0a112',
  '2004-03-19',
  'renamed column net_devices.delete_redhat_route to net_devices.delete_route
added column net_devices.network
added column net_devices.broadcast'
);
insert into "schema"."AoservProtocol" values(
  '1.0a113',
  '2004-03-22',
  'removed column private_ftp_servers.ip_address
added column private_ftp_servers.net_bind
added column private_ftp_servers.allow_anonymous'
);
insert into "schema"."AoservProtocol" values(
  '1.0a114',
  '2004-05-10',
  'changed interbase_databases.backup_retention to short
added column interbase_databases.backup_level'
);
insert into "schema"."AoservProtocol" values(
  '1.0a115',
  '2004-07-01',
  'added column interbase_server_users.predisable_password'
);
insert into "schema"."AoservProtocol" values(
  '1.0a116',
  '2004-09-20',
  'added table email_attachment_types
added table email_attachment_blocks'
);
insert into "schema"."AoservProtocol" values(
  '1.0a117',
  '2004-11-10',
  'added column backup_partitions.fill_order'
);
insert into "schema"."AoservProtocol" values(
  '1.0a118',
  '2004-11-28',
  'added column business_administrators.can_switch_users
remove column master_users.can_switch_users'
);
insert into "schema"."AoservProtocol" values(
  '1.0a119',
  '2004-11-29',
  'added column ao_servers.daemon_connect_bind'
);
insert into "schema"."AoservProtocol" values(
  '1.0a120',
  '2005-02-20',
  'added table email_sa_integration_modes
added column linux_server_accounts.junk_email_retention
added column linux_server_accounts.sa_integration_mode'
);
insert into "schema"."AoservProtocol" values(
  '1.0a121',
  '2005-02-25',
  'added column postgres_versions.minor_version'
);
insert into "schema"."AoservProtocol" values(
  '1.0a122',
  '2005-03-18',
  'removed column email_blacklists'
);
insert into "schema"."AoservProtocol" values(
  '1.0a123',
  '2005-04-27',
  'removed table limits
removed table rates
removed table service_levels
added table package_categories
added table package_definitions
added table package_definition_limits
added column packages.package_definition
added column resources.singular_display_unit
added column resources.plural_display_unit
added column resources.per_unit
added table transaction_types
changed monthly_charges.type to reference new transaction_types table
changed transactions.type to reference new transaction_types table
removed column businesses.can_set_prices
removed column httpd_servers.price
removed column ip_addresses.price
removed column packages.level
removed column packages.rate
removed column packages.user_limit
removed column packages.additional_user_rate
removed column packages.pop_limit
removed column packages.additional_pop_rate
removed column private_ftp_servers.price
removed column resources.unit'
);
insert into "schema"."AoservProtocol" values(
  '1.0a124',
  '2005-05-19',
  'added column linux_server_accounts.sa_required_score'
);
insert into "schema"."AoservProtocol" values(
  '1.0a125',
  '2005-05-20',
  'added column tickets.assigned_to
added column tickets.contact_emails
added column tickets.contact_phone_numbers'
);
insert into "schema"."AoservProtocol" values(
  '1.0a126',
  '2005-05-24',
  'removed column tickets.package
added column tickets.accounting
removed column tickets.administrator
added column tickets.created_by'
);
insert into "schema"."AoservProtocol" values(
  '1.0a127',
  '2005-07-21',
  'added column dns_zones.ttl
added column dns_records.ttl'
);
insert into "schema"."AoservProtocol" values(
  '1.0a128',
  '2005-12-01',
  'added column net_devices.mac_address
changed transactions.apr_num to text type'
);
insert into "schema"."AoservProtocol" values(
  '1.0a129',
  '2005-12-04',
  'added column httpd_sites.awstats_skip_files'
);
insert into "schema"."AoservProtocol" values(
  '1.0a130',
  '2005-12-16',
  'added column httpd_servers.timeout'
);
insert into "schema"."AoservProtocol" values(
  '1.1',
  '2006-02-13',
  'removed table net_device_host_routes
removed table net_device_local_routes
removed column postgres_server_users.usesysid
removed column postgres_servers.last_postgres_usesysid'
);
insert into "schema"."AoservProtocol" values(
  '1.2',
  '2006-02-20',
  'added column net_devices.max_bit_rate
added table time_zones
added column ao_servers.time_zone'
);
insert into "schema"."AoservProtocol" values(
  '1.3',
  '2006-02-23',
  'added column operating_system_versions.sort_order'
);
insert into "schema"."AoservProtocol" values(
  '1.4',
  '2006-03-11',
  'added table mysql_servers
removed column mysql_backups.ao_server
added column mysql_backups.mysql_server
removed table mysql_hosts
removed column mysql_databases.ao_server
added column mysql_databases.mysql_server
removed column mysql_server_users.ao_server
added column mysql_server_users.mysql_server
removed column ao_servers.is_mysql
added column technologies.pkey
added column schema_tables.default_order_by
added column mysql_db_users.create_view_priv
added column mysql_db_users.show_view_priv
added column mysql_db_users.create_routine_priv
added column mysql_db_users.alter_routine_priv
added column mysql_db_users.execute_priv
added column mysql_users.create_view_priv
added column mysql_users.show_view_priv
added column mysql_users.create_routine_priv
added column mysql_users.alter_routine_priv
added column mysql_users.create_user_priv
added column mysql_server_users.max_questions
added column mysql_server_users.max_updates
added column mysql_server_users.max_user_connections'
);
insert into "schema"."AoservProtocol" values(
  '1.5',
  '2006-04-02',
  'added table httpd_tomcat_data_sources
added table httpd_tomcat_parameters'
);
insert into "schema"."AoservProtocol" values(
  '1.6',
  '2006-05-01',
  'changed return type from boolean to int for is_linux_server_account_procmail_manual'
);
insert into "schema"."AoservProtocol" values(
  '1.7',
  '2006-05-22',
  'added column ao_servers.jilter_bind'
);
insert into "schema"."AoservProtocol" values(
  '1.8',
  '2006-05-23',
  'added column ao_servers.restrict_outbound_email'
);
insert into "schema"."AoservProtocol" values(
  '1.9',
  '2006-05-29',
  'added column failover_file_replications.use_compression
added column aoserv_protocols.last_used'
);
insert into "schema"."AoservProtocol" values(
  '1.10',
  '2006-06-06',
  'made tickets.admin_priority nullable and null by default'
);
insert into "schema"."AoservProtocol" values(
  '1.11',
  '2006-07-03',
  'added column ao_servers.daemon_connect_address'
);
insert into "schema"."AoservProtocol" values(
  '1.12',
  '2006-07-19',
  'added column ao_servers.failover_batch_size'
);
insert into "schema"."AoservProtocol" values(
  '1.13',
  '2006-07-20',
  'added column ao_servers.retention'
);
insert into "schema"."AoservProtocol" values(
  '1.14',
  '2006-07-26',
  'added column failover_file_replications.connect_address'
);
insert into "schema"."AoservProtocol" values(
  '1.15',
  '2006-09-20',
  'added column failover_file_replications.enabled'
);
insert into "schema"."AoservProtocol" values(
  '1.16',
  '2006-09-27',
  'added column servers.minimum_power
added column servers.maximum_power'
);
insert into "schema"."AoservProtocol" values(
  '1.17',
  '2006-10-09',
  'added column failover_file_replications.to_path
added column failover_file_replications.chunk_always'
);
insert into "schema"."AoservProtocol" values(
  '1.18',
  '2006-10-11',
  'added table httpd_site_authenticated_locations'
);
insert into "schema"."AoservProtocol" values(
  '1.19',
  '2006-11-27',
  'added column httpd_site_binds.redirect_to_primary_hostname'
);
insert into "schema"."AoservProtocol" values(
  '1.20',
  '2007-02-04',
  'added table whois_history'
);
insert into "schema"."AoservProtocol" values(
  '1.21',
  '2007-02-12',
  'added table business_administrator_permissions
added table aoserv_permissions'
);
insert into "schema"."AoservProtocol" values(
  '1.22',
  '2007-03-20',
  'added column failover_file_replications.connect_from'
);
insert into "schema"."AoservProtocol" values(
  '1.23',
  '2007-05-01',
  'added table encryption_keys
added table signup_request_options
added table signup_requests'
);
insert into "schema"."AoservProtocol" values(
  '1.24',
  '2007-05-13',
  'added column packages.email_in_burst
added column packages.email_in_rate
added column packages.email_out_burst
added column packages.email_out_rate
added column packages.email_relay_burst
added column packages.email_relay_rate'
);
insert into "schema"."AoservProtocol" values(
  '1.25',
  '2007-05-15',
  'changed encryption_keys.recipient to encryption_keys.id
changed encryption_keys.use_signup_requests to encryption_keys.signup_signer
added column encryption_keys.signup_recipient
changed encryption_keys.use_credit_cards to encryption_keys.credit_card_signer
added column encryption_keys.credit_card_recipient'
);
insert into "schema"."AoservProtocol" values(
  '1.26',
  '2007-05-24',
  'added column server_farms.use_restricted_smtp_port'
);
insert into "schema"."AoservProtocol" values(
  '1.27',
  '2007-06-08',
  'added column postgres_versions.postgis_version
added column postgres_databases.enable_postgis'
);
insert into "schema"."AoservProtocol" values(
  '1.28',
  '2007-06-12',
  'added table failover_mysql_replications
added column mysql_servers.package'
);
insert into "schema"."AoservProtocol" values(
  '1.29',
  '2007-06-21',
  'updated credit_cards table to support new ao-credit-cards package
added credit_card_providers table to support new ao-credit-cards package
added credit_card_transactions table to support new ao-credit-cards package'
);
insert into "schema"."AoservProtocol" values(
  '1.30',
  '2008-03-18',
  'updated ip_address.ping_monitor_enabled'
);
insert into "schema"."AoservProtocol" values(
  '1.31',
  '2008-04-12',
  'removed table backup_data
removed table backup_levels
removed column backup_partitions.device
removed column backup_partitions.minimum_free_space
removed column backup_partitions.desired_free_space
removed column backup_partitions.fill_order
removed table file_backups
removed table file_backup_devices
removed table file_backup_roots
removed table file_backup_stats
removed table file_paths
removed table interbase_backups
removed table mysql_backups
removed table postgres_backups
removed column cvs_repositories.backup_level
removed column cvs_repositories.backup_retention
removed column linux_server_accounts.cron_backup_level
removed column linux_server_accounts.cron_backup_retention
removed column linux_server_accounts.home_backup_level
removed column linux_server_accounts.home_backup_retention
removed column linux_server_accounts.inbox_backup_level
removed column linux_server_accounts.inbox_backup_retention
removed column httpd_shared_tomcats.config_backup_level
removed column httpd_shared_tomcats.config_backup_retention
removed column httpd_shared_tomcats.file_backup_level
removed column httpd_shared_tomcats.file_backup_retention
removed column httpd_shared_tomcats.log_backup_level
removed column httpd_shared_tomcats.log_backup_retention
removed column httpd_sites.config_backup_level
removed column httpd_sites.config_backup_retention
removed column httpd_sites.file_backup_level
removed column httpd_sites.file_backup_retention
removed column httpd_sites.ftp_backup_level
removed column httpd_sites.ftp_backup_retention
removed column httpd_sites.log_backup_level
removed column httpd_sites.log_backup_retention
removed column email_lists.backup_level
removed column email_lists.backup_retention
removed column interbase_databases.backup_level
removed column interbase_databases.backup_retention
removed column file_backup_settings.backup_level
added column file_backup_settings.backup_enabled
removed column file_backup_settings.backup_retention
removed column mysql_databases.backup_level
removed column mysql_databases.backup_retention
removed column postgres_databases.backup_level
removed column postgres_databases.backup_retention
removed column majordomo_servers.backup_level
removed column majordomo_servers.backup_retention
removed column servers.backup_hour
removed column servers.last_backup_time
removed column server_farms.protected_net
removed column server_farms.allow_same_server_backup
removed column server_farms.backup_farm
removed table server_reports
removed table sr_cpu
removed table sr_db_mysql
removed table sr_db_postgres
removed table sr_disk_access
removed table sr_disk_mdstat
removed table sr_disk_space
removed table sr_kernel
removed table sr_load
removed table sr_memory
removed table sr_net_devices
removed table sr_net_icmp
removed table sr_net_ip
removed table sr_net_tcp
removed table sr_net_udp
removed table sr_num_users
removed table sr_paging
removed table sr_processes
removed table sr_swap_rate
removed table sr_swap_size
removed table sendmail_smtp_stats
removed table interbase_databases
removed table interbase_db_groups
removed table interbase_reserved_words
removed table interbase_server_users
removed table interbase_users
removed column packages.daily_smtp_in_limit
removed column packages.daily_smtp_in_bandwidth_limit
removed column packages.daily_smtp_out_limit
removed column packages.daily_smtp_out_bandwidth_limit
removed column ao_servers.num_cpu
removed column ao_servers.cpu_speed
removed column ao_servers.ram
removed column ao_servers.rack
removed column ao_servers.disk
removed column ao_servers.wildcard_https
removed column ao_servers.is_interbase
removed column ao_servers.is_dns
removed column ao_servers.is_router
removed column ao_servers.iptables_name
removed column ao_servers.server_report_delay
removed column ao_servers.server_report_interval
removed column ao_servers.is_qmail
removed column ao_servers.xeroscape_name
removed column ao_servers.value
removed column ao_servers.monitoring_enabled
removed column ao_servers.emailmon_password
removed column ao_servers.ftpmon_password
removed column servers.owner
removed column servers.administrator
removed column servers.asset_label
removed column servers.minimum_power
removed column servers.maximum_power
removed column servers.hostname
added column servers.package
added column servers.name (unique per package)
added column ao_servers.hostname
removed column business_servers.can_control_interbase
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
removed column file_backup_settings.package
removed column business_servers.can_configure_backup
deleted from aoserv_permissions: set_interbase_server_user_password
updated AOSH command add_file_backup_setting
updated AOSH command set_file_backup_setting
updated AOSH command remove_file_backup_setting
updated AOSH command add_business_server
updated AOSH command invalidate
updated AOSH command invalidate ao_servers.hostname, servers.package.name||''/''||servers.name, or servers.pkey
removed column file_backup_settings.recurse
removed column failover_file_replications.from_server
added column failover_file_replications.server
removed column failover_file_replications.to_server
removed column failover_file_replications.to_path
added column failover_file_replications.backup_partition
removed column failover_file_replications.last_start_time
removed column failover_file_replications.chunk_always
added column failover_file_replications.quota_gid
added column backup_partitions.quota_enabled
added column failover_file_schedule.minute
removed column file_backup_settings.server
added column file_backup_settings.replication
removed column schema_table.default_order_by because there is not an easy way to provide cross-version compatibility
removed column schema_table.dataverse_editor
removed column schema_foreign_keys.is_bridge
removed column schema_foreign_keys.tied_bridge
renamed column email_lists.linux_account to linux_server_account
renamed column email_lists.linux_group to linux_server_group
renamed column mysql_db_users.mysql_user to mysql_server_user
removed table phone_numbers
removed column linux_acc_addresses.linux_account
added column linux_acc_addresses.linux_server_account
added column signup_requests.encryption_recipient
removed column signup_requests.encryption_key
added column signup_requests.encryption_from
removed column encryption_keys.credit_card_signer
removed column encryption_keys.credit_card_recipient
removed column encryption_keys.signup_signer
added column encryption_keys.signup_from
added column credit_card_processors.encryption_from
added column credit_card_processors.encryption_recipient
added column credit_cards.encrypted_card_number
added column credit_cards.encryption_card_number_from
added column credit_cards.encryption_card_number_recipient
added column credit_cards.encrypted_card_expiration
added column credit_cards.encrypted_expiration
added column credit_cards.encryption_expiration_from
added column credit_cards.encryption_expiration_recipient
removed column backup_reports.uncompressed_size
removed column backup_reports.compressed_size
removed column daemon_profile.server
added column daemon_profile.ao_server'
);
insert into "schema"."AoservProtocol" values(
  '1.32',
  '2008-06-28',
  'added column servers.monitoring_enabled'
);
insert into "schema"."AoservProtocol" values(
  '1.33',
  '2008-08-15',
  'renamed column net_devices.ao_server to server, references servers instead of ao_servers
renamed column net_binds.ao_server to server, references servers instead of ao_servers'
);
insert into "schema"."AoservProtocol" values(
  '1.34',
  '2008-08-17',
  'added column ip_addresses.external_ip_address'
);
insert into "schema"."AoservProtocol" values(
  '1.35',
  '2008-10-24',
  'added column ao_servers.monitoring_load_low
added column ao_servers.monitoring_load_medium
added column ao_servers.monitoring_load_high
added column ao_servers.monitoring_load_critical
added column net_devices.monitoring_bit_rate_low
added column net_devices.monitoring_bit_rate_medium
added column net_devices.monitoring_bit_rate_high
added column net_devices.monitoring_bit_rate_critical'
);
insert into "schema"."AoservProtocol" values(
  '1.36',
  '2008-11-15',
  'added table disk_types
added table physical_servers
added table processor_types
added table racks
added table raid_types
added table virtual_disks
added table virtual_servers'
);
insert into "schema"."AoservProtocol" values(
  '1.37',
  '2008-11-16',
  'added column physical_servers.supports_hvm
added column virtual_servers.requires_hvm'
);
insert into "schema"."AoservProtocol" values(
  '1.38',
  '2008-11-30',
  'removed column net_devices.netmask
added column ip_addresses.netmask'
);
insert into "schema"."AoservProtocol" values(
  '1.39',
  '2008-12-01',
  'removed column private_ftp_servers.root
removed column private_ftp_servers.linux_server_group'
);
insert into "schema"."AoservProtocol" values(
  '1.40',
  '2008-12-09',
  'added column linux_server_accounts.sa_discard_score'
);
insert into "schema"."AoservProtocol" values(
  '1.41',
  '2009-03-12',
  'renamed column virtual_servers.primary_minimum_processor_type to minimum_processor_type
removed column virtual_servers.secondary_minimum_processor_type
renamed column virtual_servers.primary_minimum_processor_speed to minimum_processor_speed
removed column virtual_servers.secondary_minimum_processor_speed
renamed column virtual_servers.primary_processor_cores to processor_cores
removed column virtual_servers.secondary_processor_cores
renamed column virtual_servers.primary_processor_weight to processor_weight
removed column virtual_servers.secondary_processor_weight
removed column virtual_servers.primary_physical_server
removed column virtual_servers.secondary_physical_server
renamed column virtual_disks.primary_minimum_raid_type to minimum_raid_type
removed column virtual_disks.secondary_minimum_raid_type
renamed column virtual_disks.primary_minimum_disk_type to minimum_disk_type
removed column virtual_disks.secondary_minimum_disk_type
renamed column virtual_disks.primary_minimum_disk_speed to minimum_disk_speed
removed column virtual_disks.secondary_minimum_disk_speed
renamed column virtual_disks.primary_weight to weight
removed column virtual_disks.secondary_weight'
);
insert into "schema"."AoservProtocol" values(
  '1.42',
  '2009-03-15',
  'removed column virtual_disks.minimum_raid_type
removed column virtual_disks.minimum_disk_type
removed table disk_types
removed table raid_types'
);
insert into "schema"."AoservProtocol" values(
  '1.43',
  '2009-03-18',
  'added column virtual_servers.primary_ram_target
added column virtual_servers.secondary_ram_target
added column virtual_servers.minimum_processor_speed_target
added column virtual_servers.processor_cores_target
added column virtual_servers.processor_weight_target
added column virtual_disks.minimum_disk_speed_target
added column virtual_disks.weight_target
removed column virtual_disks.primary_physical_volumes_locked
removed column virtual_disks.secondary_physical_volumes_locked'
);
insert into "schema"."AoservProtocol" values(
  '1.44',
  '2009-05-16',
  'removed table actions
added table ticket_actions
removed table action_types
added table ticket_action_types
added table brands
added table languages
added table resellers
added table ticket_assignments
added table ticket_brand_categories
added table ticket_categories
added column business_administrators.support_code
removed column master_users.is_ticket_admin
removed column package_definitions.accounting
added column package_definitions.brand
removed column signup_requests.accounting
added column signup_requests.brand
removed column ticket_stati.description
added column ticket_stati.sort_order
removed column ticket_types.description
removed column ticket_types.client_view
added column tickets.reseller
added column tickets.language
added column tickets.category
added column tickets.from_address
added column tickets.summary
made tickets.details nullable
added column tickets.raw_email
removed column tickets.deadline
removed column tickets.close_date
removed column tickets.closed_by
removed column tickets.technology
removed column tickets.assigned_to
added column tickets.status_timeout
added column tickets.internal_notes
removed column encryption_keys.signup_from
removed column encryption_keys.signup_recipient
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
insert into "schema"."AoservProtocol" values(
  '1.45',
  '2009-06-11',
  'removed column package_definitions.brand
added column package_definitions.accounting'
);
insert into "schema"."AoservProtocol" values(
  '1.46',
  '2009-06-12',
  'added column tickets.brand
added column brands.smtp_host
added column brands.imap_host'
);
insert into "schema"."AoservProtocol" values(
  '1.47',
  '2009-06-13',
  'Cache invalidation signals only require response from client when a server is waiting for synchronous invalidation'
);
insert into "schema"."AoservProtocol" values(
  '1.48',
  '2009-06-24',
  'added from_address to add_ticket command'
);
insert into "schema"."AoservProtocol" values(
  '1.49',
  '2009-06-25',
  'added column ticket_actions.old_type
added column ticket_actions.new_type'
);
insert into "schema"."AoservProtocol" values(
  '1.50',
  '2009-07-17',
  'made ticket_actions.administrator nullable for master-generated actions'
);
insert into "schema"."AoservProtocol" values(
  '1.51',
  '2009-07-19',
  'removed REQUEST_DAEMON_ACCESS
added REQUEST_REPLICATION_DAEMON_ACCESS
added REQUEST_VNC_CONSOLE_DAEMON_ACCESS
added column business_servers.can_vnc_console
added column virtual_servers.vnc_password'
);
insert into "schema"."AoservProtocol" values(
  '1.52',
  '2009-07-21',
  'added column brands.aoweb_struts_vnc_bind'
);
insert into "schema"."AoservProtocol" values(
  '1.53',
  '2009-07-22',
  'added column brands.aoweb_struts_keystore_type
added column brands.aoweb_struts_keystore_password'
);
insert into "schema"."AoservProtocol" values(
  '1.54',
  '2009-07-29',
  'added column mysql_users.event_priv
added column mysql_users.trigger_priv
added column mysql_db_users.event_priv
added column mysql_db_users.trigger_priv'
);
insert into "schema"."AoservProtocol" values(
  '1.55',
  '2009-08-01',
  'added get_mysql_table_status command'
);
insert into "schema"."AoservProtocol" values(
  '1.56',
  '2009-08-06',
  'added column failover_mysql_replications.monitoring_seconds_behind_low
added column failover_mysql_replications.monitoring_seconds_behind_medium
added column failover_mysql_replications.monitoring_seconds_behind_high
added column failover_mysql_replications.monitoring_seconds_behind_critical'
);
insert into "schema"."AoservProtocol" values(
  '1.57',
  '2009-08-22',
  'added table email_smtp_smart_hosts
added table email_smtp_smart_host_domains
added column servers.smtp_smart_host'
);
insert into "schema"."AoservProtocol" values(
  '1.58',
  '2009-09-21',
  'added column net_binds.monitoring_parameters'
);
insert into "schema"."AoservProtocol" values(
  '1.59',
  '2009-10-08',
  'added column failover_mysql_replications.ao_server
made failover_mysql_replications.replication nullable'
);
insert into "schema"."AoservProtocol" values(
  '1.60',
  '2009-10-09',
  'now checking the table status on MySQL slaves'
);
insert into "schema"."AoservProtocol" values(
  '1.61',
  '2009-12-05',
  'removed column package_categories.display
removed column resources.singular_display_unit
removed column resources.plural_display_unit
removed column resources.per_unit
removed column resources.description
removed column transaction_types.display
removed column transaction_types.description
removed column transaction_types.unit'
);
insert into "schema"."AoservProtocol" values(
  '1.62',
  '2012-03-26',
  'added column file_backup_settings.required
converted failover_file_replications.max_bit_rate to long'
);
insert into "schema"."AoservProtocol" values(
  '1.63',
  '2012-06-06',
  'added column physical_servers.ups_type'
);
insert into "schema"."AoservProtocol" values(
  '1.64',
  '2012-07-09',
  'added create_virtual_server command
added reboot_virtual_server command
added shutdown_virtual_server command
added destroy_virtual_server command
added pause_virtual_server command
added unpause_virtual_server command
added get_virtual_server_status command
added column business_servers.can_control_virtual_server'
);
insert into "schema"."AoservProtocol" values(
  '1.65',
  '2012-08-13',
  'added table ip_reputation_sets
added table ip_reputation_set_hosts
added table ip_reputation_set_networks
added column master_users.is_router'
);
insert into "schema"."AoservProtocol" values(
  '1.66',
  '2012-08-30',
  'renamed column ip_reputation_set_hosts.set_fkey to set
renamed column ip_reputation_set_networks.set_fkey to set
added table ip_reputation_limiters
added table ip_reputation_limiter_limits
added table ip_reputation_limiter_sets'
);
insert into "schema"."AoservProtocol" values(
  '1.67',
  '2012-10-18',
  'added gm and bm classes to ip_reputation_limiter_limits
added column ip_reputation_sets.last_reputation_added
changed ip_reputation_set_hosts.host to ip_address type
changed ip_reputation_set_networks.network to ip_address type'
);
insert into "schema"."AoservProtocol" values(
  '1.68',
  '2013-03-18',
  'added column httpd_servers.max_concurrency'
);
insert into "schema"."AoservProtocol" values(
  '1.69',
  '2013-03-21',
  'changed business_administrators.birthday to date type
changed linux_server_accounts.created to time type
changed linux_server_groups.created to time type
added column tickets.status_timeout
added column tickets.internal_notes
added domain_label to schema_types
added domain_labels to schema_types
added domain_name to schema_types
added gecos to schema_types
added group_id to schema_types
added hashed_password to schema_types
added linux_id to schema_types
added mac_address to schema_types
added money to schema_types
added mysql_database_name to schema_types
added mysql_server_name to schema_types
added mysql_table_name to schema_types
added mysql_username to schema_types
added net_port to schema_types
added postgres_database_name to schema_types
added postgres_server_name to schema_types
added postgres_username to schema_types
changed ao_servers.daemon_connect_address to hostname type
changed failover_file_replications.connect_address to hostname type
changed failover_file_log.connect_from to ip_address type
added AAAA to dns_types
changed mysql_server_users.host to string type
changed ao_servers.daemon_key to hashed_password type
changed business_administrators.password to hashed_password type
changed ao_servers.hostname to domain_name type
changed brands.nameserver1 to domain_name type
changed brands.nameserver2 to domain_name type
changed brands.nameserver3 to domain_name type
changed brands.nameserver4 to domain_name type
changed daemon_profile.ao_server to domain_name type
changed dns_records.domain to string type
changed dns_tlds.domain to domain_name type
changed email_domains.domain to domain_name type
changed email_smtp_smart_host_domains.domain to domain_name type
changed httpd_site_urls.hostname to domain_name type
changed ip_addresses.hostname to domain_name type and made nullable
changed email_smtp_relays.host to hostname type
changed private_ftp_servers.hostname to domain_name type
changed bank_transactions.transid to pkey type
changed net_tcp_redirects.net_bind to fkey type
changed private_ftp_servers.linux_server_account to fkey type
changed dns_records.dhcp_address to fkey type
changed linux_server_accounts.uid to fkey type
changed linux_server_groups.gid to fkey type
changed linux_ids.id to pkey type
changed failover_file_replications.quota_gid to fkey type
changed transactions.transid to pkey type
changed notice_log.transid to fkey type
changed net_ports.port to pkey type
changed net_binds.port to fkey type
changed net_tcp_redirects.destination_port to fkey type
changed protocols.port to fkey type
changed postgres_server_users.postgres_server to fkey type
changed brands.support_toll_free to phone type
changed brands.support_day_phone to phone type
changed brands.support_emergency_phone1 to phone type
changed brands.support_emergency_phone2 to phone type
changed brands.support_fax to phone type
changed signup_requests.business_phone to phone type
changed signup_requests.business_fax to phone type
changed signup_requests.ba_work_phone to phone type
changed signup_requests.ba_cell_phone to phone type
changed signup_requests.ba_home_phone to phone type
changed signup_requests.ba_fax to phone type
changed linux_accounts.name to gecos type
changed linux_accounts.office_location to gecos type
changed linux_accounts.office_phone to gecos type
changed linux_accounts.home_phone to gecos type
added column schema_types.since_version
added column schema_types.last_version
removed byte from schema_types
changed business_administrators.city to string type
changed business_profiles.city to string type
changed credit_card_transactions.shipping_city to string type
changed credit_card_transactions.credit_card_city to string type
changed credit_cards.city to string type
changed signup_requests.business_city to string type
changed signup_requests.ba_city to string type
removed city from schema_types
changed business_administrators.country to string type
changed business_profiles.country to string type
changed country_codes.code to string type
changed credit_card_transactions.shipping_country_code to string type
changed credit_card_transactions.credit_card_country_code to string type
changed credit_cards.country_code to string type
changed signup_requests.business_country to string type
changed signup_requests.ba_country to string type
removed country from schema_types
removed octal_int from schema_types
changed business_administrators.state to string type
changed business_profiles.state to string type
changed credit_card_transactions.shipping_state to string type
changed credit_card_transactions.credit_card_state to string type
changed credit_cards.state to string type
changed signup_requests.business_state to string type
changed signup_requests.ba_state to string type
removed state from schema_types
changed business_administrators.zip to string type
changed business_profiles.zip to string type
changed credit_card_transactions.shipping_postal_code to string type
changed credit_card_transactions.credit_card_postal_code to string type
changed credit_cards.postal_code to string type
changed signup_requests.business_zip to string type
changed signup_requests.ba_zip to string type
removed zip from schema_types
changed ticket_actions.old_accounting to accounting type
changed ticket_actions.new_accounting to accounting type'
);
insert into "schema"."AoservProtocol" values(
  '1.70',
  '2013-05-31',
  'added column net_devices.monitoring_enabled
added table distro_report_types'
);
insert into "schema"."AoservProtocol" values(
  '1.71',
  '2014-02-11',
  'added verify_virtual_disk command'
);
insert into "schema"."AoservProtocol" values(
  '1.72',
  '2014-02-20',
  'renamed column dns_records.mx_priority to priority
added column dns_records.weight
added column dns_records.port
updated AOSH command add_dns_record
renamed column dns_types.is_mx to has_priority
added column dns_types.has_weight
added column dns_types.has_port
added SRV to dns_types
added column virtual_disks.verify_day_of_week
added column virtual_disks.verify_hour_of_day'
);
insert into "schema"."AoservProtocol" values(
  '1.73',
  '2014-04-01',
  'added get_primary_physical_server command
added get_secondary_physical_server command'
);
insert into "schema"."AoservProtocol" values(
  '1.74',
  '2014-04-23',
  'added column failover_mysql_replications.max_alert_level
added column mysql_databases.max_check_table_alert_level'
);
insert into "schema"."AoservProtocol" values(
  '1.75',
  '2014-06-16',
  'added column ip_addresses.check_blacklists_over_smtp
added alternate syntax in AOSH for remove_dns_record command'
);
insert into "schema"."AoservProtocol" values(
  '1.76',
  '2015-05-21',
  'added get_failover_file_replication_activity command'
);
insert into "schema"."AoservProtocol" values(
  '1.77',
  '2015-10-16',
  'removed pseudo-table client_jvm_profile
removed pseudo-table daemon_profile
removed pseudo-table master_server_profile
removed pseudo-table master_history'
);
insert into "schema"."AoservProtocol" values(
  '1.78',
  '2016-01-07',
  'added column technology_versions.disable_time
added column technology_versions.disable_reason
added column httpd_sites.php_version'
);
insert into "schema"."AoservProtocol" values(
  '1.79',
  '2016-01-09',
  'added column httpd_sites.enable_cgi'
);
insert into "schema"."AoservProtocol" values(
  '1.80',
  '2016-11-29',
  'added column ao_servers.uid_min
added column ao_servers.gid_min
removed column linux_ids.is_system
removed column distro_files.file_md5_hi
removed column distro_files.file_md5_lo
added column distro_files.file_sha256_0
added column distro_files.file_sha256_1
added column distro_files.file_sha256_2
added column distro_files.file_sha256_3'
);
insert into "schema"."AoservProtocol" values(
  '1.80.0',
  '2017-03-30',
  'removed table linux_ids
removed table net_ports
removed table net_protocols
removed column protocols.rtmp
removed column protocols.zip
changed ao_server_daemon_hosts.host to hostname type
changed distro_files.group_name to group_id type
changed email_pipes.path to string type
renamed column email_pipes.path to command
changed failover_file_replications.quota_gid to linux_id type
changed httpd_sites.group_name to group_id type
changed httpd_tomcat_contexts.doc_base to path type
changed linux_group_accounts.group_name to group_id type
changed linux_groups.name to group_id type
changed linux_server_groups.name to group_id type
changed linux_server_accounts.uid to linux_id type
changed linux_server_groups.gid to linux_id type
changed master_hosts.host to hostname type
changed mysql_databases.name to mysql_database_name type
removed table mysql_reserved_words
changed mysql_servers.name to mysql_server_name type
changed mysql_server_users.username to mysql_username type
changed mysql_users.username to mysql_username type
changed net_binds.port to net_port type
removed column net_binds.net_protocol
changed net_devices.mac_address to mac_address type
changed net_tcp_redirects.destination_port to net_port type
changed postgres_databases.name to postgres_database_name type
removed table postgres_reserved_words
changed postgres_servers.name to postgres_server_name type
changed postgres_server_users.username to postgres_username type
changed postgres_users.username to postgres_username type
removed column protocols.net_protocol
changed protocols.port to net_port type
changed ticket_actions.old_assigned_to to username type
changed ticket_actions.new_assigned_to to username type
removed table package
changed dns_zones.package to accounting type
changed email_domains.package to accounting type
changed email_pipes.package to accounting type
changed email_smtp_relays.package to accounting type
changed httpd_sites.package to accounting type
changed ip_addresses.package to accounting type
changed linux_groups.package to accounting type
changed monthly_charges.package to accounting type
changed mysql_databases.package to accounting type
changed mysql_servers.package to accounting type
changed net_binds.package to accounting type
changed packages.name to accounting type
changed usernames.package to accounting type
removed check_business_administrator_username command
removed check_email_forwarding command
removed check_ip_address command
removed check_linux_account_username command
removed check_package_name command'
);
insert into "schema"."AoservProtocol" values(
  '1.80.1',
  '2017-04-14',
  'linux_accounts.name is now nullable
added column linux_group_accounts.operating_system_version
added column linux_server_account.sudo
added column httpd_sites.enable_ssi
added column httpd_sites.enable_htaccess
added column httpd_sites.enable_indexes
added column httpd_sites.enable_follow_symlinks
added column httpd_sites.enable_anonymous_ftp
added parameters to add_httpd_jboss_site command for new settings
added parameters to add_httpd_tomcat_shared_site command for new settings
added parameters to add_httpd_tomcat_std_site command for new settings
added set_httpd_site_php_version command
added set_httpd_site_enable_cgi command
added set_httpd_site_enable_ssi command
added set_httpd_site_enable_htaccess command
added set_httpd_site_enable_indexes command
added set_httpd_site_enable_follow_symlinks command
added set_httpd_site_enable_anonymous_ftp command
added set_httpd_tomcat_site_use_apache command
added column httpd_shared_tomcats.max_post_size
added column httpd_shared_tomcats.unpack_wars
added column httpd_shared_tomcats.auto_deploy
added column httpd_tomcat_std_sites.max_post_size
added column httpd_tomcat_std_sites.unpack_wars
added column httpd_tomcat_std_sites.auto_deploy
added set_httpd_shared_tomcat_max_post_size command
added set_httpd_shared_tomcat_unpack_wars command
added set_httpd_shared_tomcat_auto_deploy command
added set_httpd_tomcat_std_site_max_post_size command
added set_httpd_tomcat_std_site_unpack_wars command
added set_httpd_tomcat_std_site_auto_deploy command'
);
insert into "schema"."AoservProtocol" values(
  '1.80.2',
  '2017-07-20',
  'check_email_list_path command altered to include ao_server parameter'
);
insert into "schema"."AoservProtocol" values(
  '1.81.0',
  '2017-08-18',
  'added firewalld_zone_name to schema_types
added table firewalld_zones
added table net_bind_firewalld_zones
removed column net_binds.open_firewall
removed set_net_bind_open_firewall command
updated parameters to add_net_binds command for firewalld_zones
added set_net_bind_firewalld_zones command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.1',
  '2017-08-30',
  'added table httpd_site_bind_redirects'
);
insert into "schema"."AoservProtocol" values(
  '1.81.2',
  '2017-09-05',
  'added can_reference parameter to add_mysql_db_user command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.3',
  '2017-09-09',
  'added column httpd_tomcat_contexts.server_xml_configured
added server_xml_configured parameter to add_httpd_tomcat_context command
added server_xml_configured parameter to set_httpd_tomcat_context_attributes command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.4',
  '2017-10-02',
  'added column httpd_site_binds.ssl_cert_chain_file
added column httpd_site_bind_redirects.no_escape, defaulting to false'
);
insert into "schema"."AoservProtocol" values(
  '1.81.5',
  '2017-10-14',
  'added column ao_servers.sftp_umask'
);
insert into "schema"."AoservProtocol" values(
  '1.81.6',
  '2017-10-27',
  'httpd_sites.enable_cgi now defaults to false
httpd_sites.enable_ssi now defaults to false
httpd_sites.enable_htaccess now defaults to false
httpd_sites.enable_indexes now defaults to false
httpd_sites.enable_follow_symlinks now defaults to false
httpd_sites.enable_anonymous_ftp now defaults to false
removed parameters from add_httpd_jboss_site command to use defaults
removed parameters from add_httpd_tomcat_shared_site command to use defaults
removed parameters from add_httpd_tomcat_std_site command to use defaults
added column httpd_sites.block_trace_track
added column httpd_sites.block_scm
added column httpd_sites.block_core_dumps
added column httpd_sites.block_editor_backups
added set_httpd_site_block_trace_track command
added set_httpd_site_block_scm command
added set_httpd_site_block_core_dumps command
added set_httpd_site_block_editor_backups command
added column httpd_tomcat_sites.block_webinf
added set_httpd_tomcat_site_block_webinf command
added table httpd_tomcat_site_jk_mounts
added add_httpd_tomcat_site_jk_mount command
added remove_httpd_tomcat_site_jk_mount command
removed column httpd_tomcat_sites.use_apache
removed set_httpd_tomcat_site_use_apache command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.7',
  '2017-10-30',
  'added column httpd_servers.mod_access_compat
added column httpd_servers.mod_actions
added column httpd_servers.mod_alias
added column httpd_servers.mod_auth_basic
added column httpd_servers.mod_authn_core
added column httpd_servers.mod_authn_file
added column httpd_servers.mod_authz_core
added column httpd_servers.mod_authz_groupfile
added column httpd_servers.mod_authz_host
added column httpd_servers.mod_authz_user
added column httpd_servers.mod_autoindex
added column httpd_servers.mod_deflate
added column httpd_servers.mod_dir
added column httpd_servers.mod_filter
added column httpd_servers.mod_headers
added column httpd_servers.mod_include
added column httpd_servers.mod_jk
added column httpd_servers.mod_log_config
added column httpd_servers.mod_mime
added column httpd_servers.mod_mime_magic
added column httpd_servers.mod_negotiation
added column httpd_servers.mod_proxy
added column httpd_servers.mod_proxy_http
added column httpd_servers.mod_reqtimeout
added column httpd_servers.mod_rewrite
added column httpd_servers.mod_setenvif
added column httpd_servers.mod_socache_shmcb
added column httpd_servers.mod_ssl
added column httpd_servers.mod_status'
);
insert into "schema"."AoservProtocol" values(
  '1.81.8',
  '2018-04-28',
  'renamed column httpd_servers.number to "name" and changed type from int to string'
);
insert into "schema"."AoservProtocol" values(
  '1.81.9',
  '2018-05-06',
  'added column firewalld_zones.fail2ban'
);
insert into "schema"."AoservProtocol" values(
  '1.81.10',
  '2018-05-12',
  'added column httpd_servers.mod_wsgi
added column httpd_site_binds.include_site_config
added table ssl_certificates
added table ssl_certificate_alt_names
added column httpd_site_binds.certificate
removed column httpd_site_binds.ssl_cert_file
removed column httpd_site_binds.ssl_cert_key_file
removed column httpd_site_binds.ssl_cert_chain_file
added check_ssl_certificate AOSH command
added table cyrus_imapd_binds
added table cyrus_imapd_servers
added table sendmail_binds
added table sendmail_servers
removed AOSH command set_imap_folder_subscribed
removed column httpd_servers.is_mod_jk
removed column httpd_servers.max_binds
removed column httpd_shared_tomcats.is_secure
removed column httpd_shared_tomcats.is_overflow
removed column httpd_sites.content_src
removed is_secure and is_overflow parameters from add_httpd_shared_tomcat AOSH command
removed content_source parameter from add_httpd_jboss_site AOSH command
removed tomcat_version and content_source parameters from add_httpd_tomcat_shared_site AOSH command
removed content_source parameter from add_httpd_tomcat_std_site AOSH command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.11',
  '2018-06-29',
  'added column httpd_servers.monitoring_concurrency_low
added column httpd_servers.monitoring_concurrency_medium
added column httpd_servers.monitoring_concurrency_high
added column httpd_servers.monitoring_concurrency_critical
added get_httpd_server_concurrency AOSH command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.12',
  '2018-08-25',
  'added set_httpd_shared_tomcat_version AOSH command
added set_httpd_tomcat_std_site_version AOSH command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.13',
  '2018-10-04',
  'added column httpd_site_authenticated_locations.handler
added add_httpd_site_authenticated_location AOSH command
added set_httpd_site_authenticated_location_attributes AOSH command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.14',
  '2018-10-24',
  'added column httpd_site_binds.name'
);
insert into "schema"."AoservProtocol" values(
  '1.81.15',
  '2018-10-26',
  'added table httpd_site_bind_headers'
);
insert into "schema"."AoservProtocol" values(
  '1.81.16',
  '2018-11-12',
  'added table ssl_certificate_other_uses'
);
insert into "schema"."AoservProtocol" values(
  '1.81.17',
  '2018-11-16',
  'added column ip_addresses.monitoring_enabled
added set_ip_address_monitoring_enabled AOSH command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.18',
  '2018-11-29',
  'Renamed all columns since_version to sinceVersion
Renamed all columns last_version to lastVersion
Moved sinceVersion and lastVersion columns to lower column indexes

aosh_command table:
  renamed table_name to table
  renamed short_desc to description

schema_columns table:
  renamed pkey to id
  renamed table_name to table
  renamed column_name to column
  changed index type from int to short
  renamed is_nullable to isNullable
  renamed is_unique to isUnique
  renamed is_public to isPublic

schema_foreign_keys table:
  renamed pkey to id
  renamed key_column to column
  renamed foreign_column to foreignColumn

schema_tables table:
  renamed table_id to id, and moved to index 0
  renamed is_public to isPublic

schema_types table:
  renamed num to id, changed type from int to pkey, and moved to index 0
  renamed type to name

httpd_workers table:
  removed pkey column
  renamed net_bind to bind as primary key
  renamed code to name
  renamed tomcat_siite to tomcatSite

ip_addresses table:
  renamed pkey to id
  renamed ip_address to inetAddress
  renamed net_device to device
  renamed is_alias to isAlias
  changed package type to fkey as reference to packages.pkey
  renamed available to isAvailable
  renamed is_overflow to isOverflow
  renamed is_dhcp to isDhcp
  removed ping_monitor_enabled
  renamed external_ip_address to externalInetAddress
  removed check_blacklists_over_smtp
  removed monitoring_enabled

mysql_servers table:
  removed pkey column
  renamed net_bind to bind as primary key
  removed package column

net_devices:
  renamed device_id to deviceId

ao_servers:
  renamed daemon_device_id to daemonDeviceId
  renamed uid_min to uidMin
  renamed gid_min to gidMin
  added uidMax
  added gidMax
  added lastUid
  added lastGid

dns_records:
  renamed dhcp_address to dhcpAddress

httpd_sites:
  renamed pkey to id
  renamed site_name to name

linux_group_accounts:
  renamed pkey to id
  renamed group_name to group
  renamed username to user
  renamed operating_system_version to operatingSystemVersion

postgres_servers table:
  removed pkey column
  renamed net_bind to bind as primary key

net_binds:
  renamed pkey to id
  renamed ip_address to ipAddress

sendmail_servers:
  renamed pkey to id
  renamed client_addr_inet to clientAddrInet
  renamed client_addr_inet6 to clientAddrInet6

aoserv_protocols:
  renamed last_used to lastUsed

bank_accounts:
  renamed deposit_delay to depositDelay
  renamed withdrawal_delay to withdrawalDelay

bank_transaction_types:
  renamed type to name
  renamed is_negative to isNegative

expense_categories:
  renamed expense_code to name

bank_transactions:
  renamed transid to id and moved to first column
  renamed bank_account to account
  renamed expense_code to expenseCategory
  renamed check_no to checkNo

added table IpAddressMonitoring:
  moved column IPAddress.monitoring_enabled to IpAddressMonitoring.enabled
  moved column IPAddress.ping_monitor_enabled to IpAddressMonitoring.pingMonitorEnabled
  moved column IPAddress.check_blacklists_over_smtp to IpAddressMonitoring.checkBlacklistsOverSmtp
  added column IpAddressMonitoring.verifyDnsPtr
  added column IpAddressMonitoring.verifyDnsA'
);
insert into "schema"."AoservProtocol" values(
  '1.81.19',
  '2018-12-03',
  'ProgressListener and TableLoadListener now notified of row counts using a 64-bit integer to handle results with more than a billion rows

Renamed table billing.whois_history to billing.WhoisHistory

Added table billing.WhoisHistoryAccount

billing.WhoisHistory:
  Renamed pkey to id
  Changed zone to domain_name type (without the trailing period)
  Renamed zone to registrableDomain
  Added column exitStatus
  Renamed whois_output to output
  Added column error
  Removed column accounting'
);
insert into "schema"."AoservProtocol" values(
  '1.81.20',
  '2018-12-09',
  'Added column account.Profile.billingEmailFormat
Added column account.Profile.technicalEmailFormat
Updated add_business_profile AOSH command'
);
insert into "schema"."AoservProtocol" values(
  '1.81.21',
  '2018-12-14',
  'Renamed table httpd_site_bind_redirect to RewriteRule
Renamed column RewriteRule.pkey to id
Renamed column RewriteRule.httpd_site_bind to virtualHost
Renamed column RewriteRule.sort_order to sortOrder
Added column RewriteRule.flags
Removed column RewriteRule.no_escape'
);
insert into "schema"."AoservProtocol" values(
  '1.81.22',
  '2018-12-17',
  'Renamed account.Username to account.User
Added linux_username to schema.Type
Changed linux.User.username to linux_username type
Changed web.Site.linux_account to linux_username type
Changed linux.UserServer.username to linux_username type
Changed linux.GroupUser.name to linux_username type
Changed ftp.GuestUser.username to linux_username type
Changed distribution.management.DistroFile.linux_account to linux_username type'
);
insert into "schema"."AoservProtocol" values(
  '1.82.0',
  '2019-05-16',
  'Added payment.CreditCard.expirationMonth column
Added payment.CreditCard.expirationYear column
Removed payment.CreditCard.encrypted_expiration column
Removed payment.CreditCard.encryption_expiration_from column
Removed payment.CreditCard.encryption_expiration_recipient column
Added payment.Payment.creditCard.expirationMonth column
Added payment.Payment.creditCard.expirationYear column
Added payment.Payment.authorizationResult.providerReplacementMaskedCardNumber column
Added payment.Payment.authorizationResult.replacementMaskedCardNumber column
Added payment.Payment.authorizationResult.providerReplacementExpiration column
Added payment.Payment.authorizationResult.replacementExpirationMonth column
Added payment.Payment.authorizationResult.replacementExpirationYear column'
);
insert into "schema"."AoservProtocol" values(
  '1.82.1',
  '2019-05-29',
  'Added payment.CreditCard.customerId column
Added payment.Payment.creditCard.customerId column'
);
insert into "schema"."AoservProtocol" values(
  '1.83.0',
  '2019-07-12',
  'Added billing.Currency table
Changed billing.MonthlyCharge.rate to money type
New table billing.NoticeLog.balance
Removed column billing.NoticeLog.balance
Renamed column billing.PackageDefinition.setup_fee to setupFee and changed to money type
Renamed column billing.PackageDefinition.monthly_rate to monthlyRate and changed to money type
Renamed column billing.PackageDefinitionLimit.additional_rate to additionalRate and changed to money type
Changed billing.Transaction.rate to money type
Removed column payment.Payment.currency_code
Changed payment.Payment.amount to money type
Renamed column payment.Payment.tax_amount to taxAmount and changed to money type
Renamed column payment.Payment.shipping_amount to shippingAmount and changed to money type
Renamed column payment.Payment.duty_amount to dutyAmount and changed to money type
Renamed AOSH command "add_transaction" to "billing.Transaction.add", and it now accepts a time with a value of "now", "today", "YYYY-MM-DD" or "YYYY-MM-DD HH:MM[:SS[.mmm]]"
Added types "Identifier" (128-bit) and "SmallIdentifier" (64-bit)
Renamed "master.Process.process_id" to "id" and changed to "SmallIdentifier" type
Renamed "master.Process.connector_id" to "connectorId" and changed to "Identifier" type
Renamed AOSH command "check_ssl_certificate" to "pki.Certificate.check", and it now accepts a boolean flag to enable/disable cached results'
);
insert into "schema"."AoservProtocol" values(
  '1.83.1',
  '2019-07-29',
  'Master returns new entropy needed as entropy is added.'
);
insert into "schema"."AoservProtocol" values(
  '1.83.2',
  '2020-02-15',
  'Added column web.tomcat.PrivateTomcatSite.tomcatAuthentication
Added AOSH command web.tomcat.PrivateTomcatSite.tomcatAuthentication.set
Added column web.tomcat.SharedTomcat.tomcatAuthentication
Added AOSH command web.tomcat.SharedTomcat.tomcatAuthentication.set'
);
/* TODO:
renamed dns.TopLevelDomain to dns.Suffix
  added column isRegistrable
  added column isPublicSuffix
  added column isManual
 */
-- TODO: added table schema.Schema
-- TODO: added column schema.Table.schema
-- TODO: Nullable descriptions instead of where we have ''?
-- TODO: filter schema.Type by only those matching current protocol, including id non-breaking sequence starting at 0, then no longer send Ids at all
-- TODO: Remove unused email_attachment_blocks
-- TODO: Is net_devices.delete_route still used?
-- TODO: failover_file_replications.connect_address should be a hostaddress type?
-- TODO added net.IpSet table
-- TODO added net.IpSetEntry table
-- TODO added net.reputation.LimiterIpSet table
