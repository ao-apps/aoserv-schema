begin;
insert into schema_tables values(
    'action_types',
    (select count(*) from schema_tables),
    'Action Types',
    true,
    'Table action_types is a lookup for the ticket_actions table showing possible actions for a ticket in the tickets table',
    '1.0a100',
    '1.43'
);
insert into schema_tables values(
    'actions',
    (select count(*) from schema_tables),
    'Actions',
    false,
    'Table actions includes information regarding specific actions taken on items in the tickets table',
    '1.0a100',
    '1.43'
);
insert into schema_tables values(
    'ao_server_daemon_hosts',
    (select count(*) from schema_tables),
    'AOServ Server Daemon Hosts',
    false,
    '<code>ao_server_daemon_hosts</code> stores which hosts may connect to the AOServ Daemon on a server.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'ao_servers',
    (select count(*) from schema_tables),
    'AOServ Servers',
    false,
    'The ao_servers table keeps track of all the servers that are running the AOServ distribution.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'aoserv_permissions',
    (select count(*) from schema_tables),
    'AOServ Permissions',
    true,
    '<code>aoserv_permissions</code> lists all of the possible permissions in the AOServ system.',
    '1.21',
    null
);
insert into schema_tables values(
    'aoserv_protocols',
    (select count(*) from schema_tables),
    'AOServ Protocols',
    true,
    '<code>aoserv_protocols</code> keeps track of the different versions of the protocol and what is available in that protocol.',
    '1.0a101',
    null
);
insert into schema_tables values(
    'aosh_commands',
    (select count(*) from schema_tables),
    'AOSH Commands',
    true,
    '<code>aosh_commands</code> stores the details about each command that may be used in the AO shell.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'architectures',
    (select count(*) from schema_tables),
    'Architectures',
    true,
    'The architectures table provides all the possible computer architectures for the servers table.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'backup_data',
    (select count(*) from schema_tables),
    'Backup Data',
    false,
    'The <code>backup_data</code> table stores the details of unique set of backup data.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'backup_levels',
    (select count(*) from schema_tables),
    'Backup Levels',
    true,
    '<code>backup_levels</code> stores all of the possible backup paranoia levels.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'backup_partitions',
    (select count(*) from schema_tables),
    'Backup Partitions',
    false,
    'The <code>backup_partitions</code> table stores the details of each backup location.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'backup_reports',
    (select count(*) from schema_tables),
    'Backup Reports',
    false,
    'The <code>backup_reports</code> table stores the daily summary of backup system usage.',
    '1.0a101',
    null
);
insert into schema_tables values(
    'backup_retentions',
    (select count(*) from schema_tables),
    'Backup Retentions',
    true,
    '<code>backup_retentions</code> stores all of the possible backup retention times.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'bank_accounts',
    (select count(*) from schema_tables),
    'Bank Accounts',
    false,
    'The bank_accounts table stores all the bank accounts we operate.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'bank_transaction_types',
    (select count(*) from schema_tables),
    'Bank Transaction Types',
    false,
    'The bank_transaction_types table stores all the possible types of transactions for bank_transactions.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'bank_transactions',
    (select count(*) from schema_tables),
    'Bank Transactions',
    false,
    'The bank_transactions table stores all the the transactions that have occured on a bank account.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'banks',
    (select count(*) from schema_tables),
    'Banks',
    false,
    'The banks table stores information about each bank we deal with',
    '1.0a100',
    null
);
insert into schema_tables values(
    'blackhole_email_addresses',
    (select count(*) from schema_tables),
    'Blackhole Email Addresses',
    false,
    'The blackhole_email_addresses is a list of email addresses in which all email sent to them is immediately discarded via /dev/null.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'brands',
    (select count(*) from schema_tables),
    'Brands',
    false,
    'Each brand has separate website, packages, nameservers, and support',
    '1.44',
    null
);
insert into schema_tables values(
    'business_administrators',
    (select count(*) from schema_tables),
    'Business Administrators',
    false,
    'The business_administrators table stores details about the people who are allowed to access the aoserv and aoweb utilities.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'business_administrator_permissions',
    (select count(*) from schema_tables),
    'Business Administrator Permissions',
    false,
    'Grants administrative permissions.',
    '1.21',
    null
);
insert into schema_tables values(
    'business_profiles',
    (select count(*) from schema_tables),
    'Business Profiles',
    false,
    'The business_profiles stores all the old profile data for a business.  This is done so that old contacts may be used in case of an emergency.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'businesses',
    (select count(*) from schema_tables),
    'Businesses',
    false,
    'The businesses table stores details about businesses',
    '1.0a100',
    null
);
insert into schema_tables values(
    'business_servers',
    (select count(*) from schema_tables),
    'Business Servers',
    false,
    'The business_servers table stores which servers may be accessed by which business.  A child business can only access a subset of the parent business'' servers.  Only one entry per business is flagged as default.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'client_jvm_profile',
    (select count(*) from schema_tables),
    'Client JVM Profile',
    false,
    '',
    '1.0a100',
    null
);
insert into schema_tables values(
    'country_codes',
    (select count(*) from schema_tables),
    'Country Codes',
    true,
    'The country_codes table contains all of the valid country codes.  This data was obtained from http://digitalid.verisign.com/ccodes.html',
    '1.0a100',
    null
);
insert into schema_tables values(
    'credit_card_processors',
    (select count(*) from schema_tables),
    'Credit Card Processors',
    false,
    'The credit_card_processors table stores all of the different credit card processing merchant accounts.',
    '1.29',
    null
);
insert into schema_tables values(
    'credit_card_transactions',
    (select count(*) from schema_tables),
    'Credit Card Transactions',
    false,
    'The credit_card_transactions table stores the complete history of credit card processor transactions.',
    '1.29',
    null
);
insert into schema_tables values(
    'credit_cards',
    (select count(*) from schema_tables),
    'Credit Cards',
    false,
    'The credit_cards table stores all of the client credit card information in an encrypted format.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'cvs_repositories',
    (select count(*) from schema_tables),
    'CVS Repositories',
    false,
    'The <code>cvs_repositories</code> table stores the details of each CVSROOT',
    '1.0a100',
    null
);
insert into schema_tables values(
    'daemon_profile',
    (select count(*) from schema_tables),
    'Daemon Profile',
    false,
    '',
    '1.0a100',
    null
);
insert into schema_tables values(
    'disable_log',
    (select count(*) from schema_tables),
    'Disable Log',
    false,
    'The <code>disable_log</code> logs all the times things are disabled.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'disk_types',
    (select count(*) from schema_tables),
    'Disk Types',
    true,
    'The possible types of disk interfaces.',
    '1.36',
    '1.41'
);
insert into schema_tables values(
    'distro_file_types',
    (select count(*) from schema_tables),
    'Distro File Types',
    true,
    'The distro_file_types stores all of the possible file types.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'distro_files',
    (select count(*) from schema_tables),
    'Distro Files',
    false,
    'The distro_files stores all of the file attributes in the templates.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'distro_report_types',
    (select count(*) from schema_tables),
    'Distro Report Types',
    true,
    'The distro_report_types stores all of the possible report types.',
    '1.70',
    null
);
insert into schema_tables values(
    'dns_forbidden_zones',
    (select count(*) from schema_tables),
    'DNS Forbidden Zones',
    true,
    '<code>dns_forbidden_zones</code> stores all of the DNS zones that may not be hosted by the name servers',
    '1.0a100',
    null
);
insert into schema_tables values(
    'dns_records',
    (select count(*) from schema_tables),
    'DNS Records',
    false,
    '<code>dns_records</code> stores all of individual records of the name server.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'dns_tlds',
    (select count(*) from schema_tables),
    'DNS TLDs',
    true,
    '<code>dns_tlds</code> stores all of the domains that are considered to be "top level domains".',
    '1.0a100',
    null
);
insert into schema_tables values(
    'dns_types',
    (select count(*) from schema_tables),
    'DNS Types',
    true,
    '<code>dns_types</code> stores all of the types of entries that may be placed in a line of a zone file.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'dns_zones',
    (select count(*)
    from schema_tables),
    'DNS Zones',
    false,
    '<code>dns_zones</code> stores all of the DNS zones.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_addresses',
    (select count(*) from schema_tables),
    'Email Addresses',
    false,
    'The email_addresses table stores a central pool of all email addresses.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_attachment_blocks',
    (select count(*) from schema_tables),
    'Email Attachment Blocks',
    false,
    'The email_attachment_blocks table stores all attachment types that are currently blocked.',
    '1.0a116',
    null
);
insert into schema_tables values(
    'email_attachment_types',
    (select count(*) from schema_tables),
    'Email Attachment Types',
    true,
    '<code>email_attachment_types</code> stores all of the possible attachment extensions that may be blocked.',
    '1.0a116',
    null
);
insert into schema_tables values(
    'email_blacklists',
    (select count(*) from schema_tables),
    'Email Blacklists',
    false,
    '',
    '1.0a105',
    '1.0a121'
);
insert into schema_tables values(
    'email_domains',
    (select count(*) from schema_tables),
    'Email Domains',
    false,
    'The email_domains table stores all the domains that the MTA responds to.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_forwarding',
    (select count(*) from schema_tables),
    'Email Forwarding',
    false,
    'The email_forwarding sends email addresssed to email_addresses to another address.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_list_addresses',
    (select count(*) from schema_tables),
    'Email List Addresses',
    false,
    'The email_list_addresses attaches the email_addresses to the email lists.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_lists',
    (select count(*) from schema_tables),
    'Email Lists',
    false,
    'The email_lists table stores pointers to all the list files that are used for email.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_pipe_addresses',
    (select count(*) from schema_tables),
    'Email Pipe Addresses',
    false,
    'The email_pipe_addresses attaches the email_addresses to the email pipes.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_pipes',
    (select count(*) from schema_tables),
    'Email Pipes',
    false,
    'The email_pipes table stores pointers to all the processes that are used for direct delivery of email.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_smtp_relay_types',
    (select count(*) from schema_tables),
    'Email SMTP Relay Types',
    true,
    'The email_smtp_relay_types table stores all the different types of SMTP rules.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_smtp_relays',
    (select count(*) from schema_tables),
    'Email SMTP Relays',
    false,
    'The email_smtp_relays table stores the SMTP server access rules.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'email_smtp_smart_host_domains',
    (select count(*) from schema_tables),
    'Email SMTP Smart Host Domains',
    false,
    'The email_smtp_smart_host_domains table stores optional per-domain settings for email_smtp_smart_hosts.',
    '1.57',
    null
);
insert into schema_tables values(
    'email_smtp_smart_hosts',
    (select count(*) from schema_tables),
    'Email SMTP Smart Hosts',
    false,
    'The email_smtp_smart_hosts table indicates a SMTP port is configured as a SmartHost for one or more servers.',
    '1.57',
    null
);
insert into schema_tables values(
    'email_sa_integration_modes',
    (select count(*) from schema_tables),
    'Email SpamAssassin Integration Modes',
    true,
    'The email_sa_integration_modes tables provides all the possible spam assassin itegration modes supported.',
    '1.0a120',
    null
);
insert into schema_tables values(
    'encryption_keys',
    (select count(*) from schema_tables),
    'Encryption Keys',
    false,
    'The encryption_keys table stores the list of GPG key ids on a per-business basis.',
    '1.23',
    null
);
insert into schema_tables values(
    'expense_categories',
    (select count(*) from schema_tables),
    'Expense Categories',
    false,
    'The expense_categories table is a lookup for bank_transactions, and is used to organize expenditures for accounting purposes.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'failover_file_log',
    (select count(*) from schema_tables),
    'Failover File Log',
    false,
    'The failover_file_log records statistics about each finished failover file replication.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'failover_file_replications',
    (select count(*) from schema_tables),
    'Failover File Replications',
    false,
    'The failover_file_replications configures the replication of files from servers to failover servers.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'failover_file_schedule',
    (select count(*) from schema_tables),
    'Failover File Schedule',
    false,
    'The failover_file_schedule controls when replications occur.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'failover_mysql_replications',
    (select count(*) from schema_tables),
    'Failover MySQL Replications',
    false,
    'The failover_mysql_replications indicates a failover replication is using MySQL replication for /var/lib/mysql/... instead of file-based replication.',
    '1.28',
    null
);
insert into schema_tables values(
    'file_backups',
    (select count(*) from schema_tables),
    'File Backups',
    false,
    'The <code>file_backups</code> table stores the details of each backed-up file.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'file_backup_devices',
    (select count(*) from schema_tables),
    'File Backup Devices',
    true,
    'The <code>file_backup_devices</code> table stores the details of each device used by the backup system.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'file_backup_roots',
    (select count(*) from schema_tables),
    'File Backup Roots',
    false,
    'The <code>file_backup_roots</code> table stores the entry points for browsing the <code>file_backups</code>.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'file_backup_settings',
    (select count(*) from schema_tables),
    'File Backup Settings',
    false,
    'The <code>file_backup_settings</code> table overrides everything in the backup system except <code>file_backup_devices</code>.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'file_backup_stats',
    (select count(*) from schema_tables),
    'File Backup Stats',
    false,
    'The <code>file_backup_stats</code> table stores the details of each backup interation through the filesystem.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'ftp_guest_users',
    (select count(*) from schema_tables),
    'FTP Guest Users',
    false,
    'Each <code>linux_account</code> may optionally be a guest FTP user.  A guest FTP user is restricted to FTP access in their home directory.  The passwd and group files are created such that any username or group in the same business resolve to the correct text names.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_binds',
    (select count(*) from schema_tables),
    'Httpd Binds',
    false,
    'The <code>httpd_binds</code> table represents all the ip_address port binding combinations.  The app_protocol of the bind should always be HTTP or HTTPS.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_jboss_sites',
    (select count(*) from schema_tables),
    'Httpd JBoss Sites',
    false,
    '<code>httpd_jboss_sites</code> ties httpd_sites to a jboss version to its httpd_shared_tomcat JVM.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_jboss_versions',
    (select count(*) from schema_tables),
    'Httpd JBoss Versions',
    true,
    '<code>httpd_jboss_versions</code> is a lookup table containing information about different jboss versions.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_jk_codes',
    (select count(*) from schema_tables),
    'Httpd JK Codes',
    true,
    'The httpd_jk_codes table contains all the possible mod_jk codes.
The codes must be unique for one httpd_sites when the site is used
in multiple httpd_servers.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_jk_protocols',
    (select count(*) from schema_tables),
    'Httpd JK Protocols',
    true,
    'The httpd_jk_protocols table contains all of the possible protocols used by the mod_jk Apache module.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_servers',
    (select count(*) from schema_tables),
    'Httpd Servers',
    false,
    'The httpd_servers table contains a list of all the Apache servers.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_shared_tomcats',
    (select count(*) from schema_tables),
    'Httpd Shared Tomcats',
    false,
    '<code>httpd_shared_tomcats</code> stores information about the JVM shared by httpd_tomcat_shared_sites.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_site_authenticated_locations',
    (select count(*) from schema_tables),
    'Httpd Site Authenticated Locations',
    false,
    'The <code>httpd_site_authenticated_locations</code> configured Apache basic authentication using Location directives.',
    '1.18',
    null
);
insert into schema_tables values(
    'httpd_site_binds',
    (select count(*) from schema_tables),
    'Httpd Site Binds',
    false,
    'The <code>httpd_site_binds</code> attaches httpd_sites to httpd_binds.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_site_urls',
    (select count(*) from schema_tables),
    'Httpd Site URLs',
    false,
    'The <code>httpd_site_urls</code> stores the hostnames that a site will respond to.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_sites',
    (select count(*) from schema_tables),
    'Httpd Sites',
    false,
    'The httpd_sites table stores all of the site names used in the
/www directory on servers.  Each site name must be unique per
server.  Also, for site portability, it is preferred that sites
remain unique between one set of servers.  Such as AO Industries
will use unique names across all of its virtual servers, while
resellers may also choose to use unique names across their sets
of dedicated machines.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_static_sites',
    (select count(*) from schema_tables),
    'Httpd Static Sites',
    false,
    'The <code>httpd_static_sites</code> stores the details of all sites that simply host static content only.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_tomcat_contexts',
    (select count(*) from schema_tables),
    'Httpd Tomcat Contexts',
    false,
    'The <code>httpd_tomcat_contexts</code> stores the details of all contexts for all Tomcat sites.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_tomcat_data_sources',
    (select count(*) from schema_tables),
    'Httpd Tomcat Data Sources',
    false,
    'The <code>httpd_tomcat_data_sources</code> stores the data sources on a per-context basis.',
    '1.5',
    null
);
insert into schema_tables values(
    'httpd_tomcat_parameters',
    (select count(*) from schema_tables),
    'Httpd Tomcat Parameters',
    false,
    'The <code>httpd_tomcat_parameters</code> stores the parameters on a per-context basis.',
    '1.5',
    null
);
insert into schema_tables values(
    'httpd_tomcat_sites',
    (select count(*) from schema_tables),
    'Httpd Tomcat Sites',
    false,
    'The <code>httpd_tomcat_sites</code> stores the details of all sites based on the Tomcat servlet engine.  This includes JBoss, single instance Tomcats, and a Tomcat that runs in a shared Java VM.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_tomcat_shared_sites',
    (select count(*) from schema_tables),
    'Httpd Tomcat Shared Sites',
    false,
    '<code>httpd_tomcat_shared_sites</code> ties the httpd_tomcat_site to its httpd_shared_tomcat JVM.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_tomcat_std_sites',
    (select count(*) from schema_tables),
    'Httpd Tomcat Std Sites',
    false,
    'The <code>httpd_tomcat_std_sites</code> table stores the details for each site that is self contained in its /www directory.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_tomcat_versions',
    (select count(*) from schema_tables),
    'Httpd Tomcat Versions',
    true,
    'The <code>httpd_tomcat_versions</code> is a lookup of all the available versions of Tomcat.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'httpd_workers',
    (select count(*) from schema_tables),
    'Httpd Workers',
    false, 'The httpd_workers table contains all of the workers that are registered on each server.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'incoming_payments',
    (select count(*) from schema_tables),
    'Incoming Payments',
    false,
    'The incoming_payments table stores encrypted credit card numbers
associated with transactions.  These numbers are only kept until
the accounting department transfers the data to their records.',
    '1.0a100',
    '1.28'
);
insert into schema_tables values(
    'interbase_backups',
    (select count(*) from schema_tables),
    'InterBase Backups',
    false,
    'The interbase_backups table stores the information about each backup of an InterBase database in the system.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'interbase_databases',
    (select count(*) from schema_tables),
    'InterBase Databases',
    false,
    'The <code>interbase_databases</code> table stores the details of each database.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'interbase_db_groups',
    (select count(*) from schema_tables),
    'InterBase DB Groups',
    false,
    'The <code>interbase_db_groups</code> table provides groupings of InterBase databases belonging to one <code>linux_group</code>.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'interbase_reserved_words',
    (select count(*) from schema_tables),
    'InterBase Reserved Words',
    true,
    'The <code>interbase_reserved_words</code> table contains all of the InterBase reserved words.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'interbase_server_users',
    (select count(*) from schema_tables),
    'InterBase Server Users',
    false,
    'The <code>interbase_server_users</code> grants an <code>interbase_user</code> access to a server.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'interbase_users',
    (select count(*) from schema_tables),
    'InterBase Users',
    false,
    'The <code>interbase_users</code> table contains the global details for an InterBase user.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'ip_addresses',
    (select count(*) from schema_tables),
    'IP Addresses',
    false,
    'The ip_addresses table has an entry for every IP address hosted on our machines.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'ip_reputation_limiter_limits',
    (select count(*) from schema_tables),
    'IP Reputation Limiter Limits',
    false,
    'The per-class limits for each IP Reputation Limiter.',
    '1.66',
    null
);
insert into schema_tables values(
    'ip_reputation_limiter_sets',
    (select count(*) from schema_tables),
    'IP Reputation Limiter Sets',
    false,
    'The sets for each IP Reputation Limiter.',
    '1.66',
    null
);
insert into schema_tables values(
    'ip_reputation_limiters',
    (select count(*) from schema_tables),
    'IP Reputation Limiters',
    false,
    'A network traffic limiter based established IP reputation.',
    '1.66',
    null
);
insert into schema_tables values(
    'ip_reputation_set_hosts',
    (select count(*) from schema_tables),
    'IP Reputation Set Hosts',
    false,
    'The per-host reputation for each IP Reputation Set.',
    '1.65',
    null
);
insert into schema_tables values(
    'ip_reputation_set_networks',
    (select count(*) from schema_tables),
    'IP Reputation Set Networks',
    false,
    'The per-network reputation for each IP Reputation Set.',
    '1.65',
    null
);
insert into schema_tables values(
    'ip_reputation_sets',
    (select count(*) from schema_tables),
    'IP Reputation Sets',
    false,
    'A set of IP reputation on a per-host and per-network basis.',
    '1.65',
    null
);
insert into schema_tables values(
    'languages',
    (select count(*) from schema_tables),
    'Languages',
    true,
    'The languages table provides all the possible languages for brands.',
    '1.44',
    null
);
insert into schema_tables values(
    'limits',
    (select count(*) from schema_tables),
    'Limits',
    true,
    '',
    '1.0a100',
    '1.0a122'
);
insert into schema_tables values(
    'linux_acc_addresses',
    (select count(*) from schema_tables),
    'Linux Account Addresses',
    false,
    'The linux_acc_addresses table links email addresses to linux accounts.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'linux_account_types',
    (select count(*) from schema_tables),
    'Linux Account Types',
    true,
    'The linux_account_types table stores all the different types of linux accounts.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'linux_accounts',
    (select count(*) from schema_tables),
    'Linux Accounts',
    false,
    'The linux_accounts table stores all of the linux account info that is common to all machines.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'linux_group_accounts',
    (select count(*) from schema_tables),
    'Linux Group Accounts',
    false,
    'The linux_group_accounts stores the alternate users for linux groups.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'linux_group_types',
    (select count(*) from schema_tables),
    'Linux Group Types',
    true,
    'The linux_group_types table stores all the different types of linux groups.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'linux_groups',
    (select count(*) from schema_tables),
    'Linux Groups',
    false,
    'The linux_groups table stores the details of each linux group that are common to every server.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'linux_ids',
    (select count(*) from schema_tables),
    'Linux IDs',
    true,
    'The linux_ids is a table of all the GID and UID values that are acceptable for a linux_server_group or linux_server_account.  0-499 are flagged as system and 500-65533 are user.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'linux_server_accounts',
    (select count(*) from schema_tables),
    'Linux Server Accounts',
    false,
    'The linux_server_accounts table contains the user configuration that is unique to each server.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'linux_server_groups',
    (select count(*) from schema_tables),
    'Linux Server Groups',
    false,
    'The linux_server_groups table stores the details about the groups that exist on the servers.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'majordomo_lists',
    (select count(*) from schema_tables),
    'Majordomo Lists',
    false,
    'The majordomo_lists table stores the details of each list in a majordomo_server.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'majordomo_servers',
    (select count(*) from schema_tables),
    'Majordomo Servers',
    false,
    'The majordomo_servers table stores all the details for one domain of Majordomo hosting.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'majordomo_versions',
    (select count(*) from schema_tables),
    'Majordomo Versions',
    true,
    'The majordomo_versions table contains a list of all the supported versions of the Majordomo manages email list server.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'master_history',
    (select count(*) from schema_tables),
    'Master History',
    false,
    '',
    '1.0a100',
    null
);
insert into schema_tables values(
    'master_hosts',
    (select count(*) from schema_tables),
    'Master Hosts',
    false,
    '<code>master_hosts</code> stores which hosts each user may connect from.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'master_processes',
    (select count(*) from schema_tables),
    'Master Processes',
    false,
    '',
    '1.0a100',
    null
);
insert into schema_tables values(
    'master_server_profile',
    (select count(*) from schema_tables),
    'Master Server Profile',
    false,
    '',
    '1.0a100',
    null
);
insert into schema_tables values(
    'master_server_stats',
    (select count(*) from schema_tables),
    'Master Server Stats',
    false,
    '',
    '1.0a100',
    null
);
insert into schema_tables values(
    'master_servers',
    (select count(*) from schema_tables),
    'Master Servers',
    false,
    '<code>master_servers</code> stores which servers each user may control.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'master_users',
    (select count(*) from schema_tables),
    'Master Users',
    false,
    '<code>master_users</code> stores the authorization information for people that may access the master controller.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'merchant_accounts',
    (select count(*) from schema_tables),
    'Merchant Accounts',
    false,
    'The merchant_accounts contains all the information about the merchant account providers we do business with.',
    '1.0a100',
    '1.28'
);
insert into schema_tables values(
    'monthly_charges',
    (select count(*) from schema_tables),
    'Monthly Charges',
    false,
    'The monthly_charges table contains an entry for each transaction that is automatically charged each month.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'mysql_backups',
    (select count(*) from schema_tables),
    'MySQL Backups',
    false,
    'The mysql_backups table stores the information about each backup of a MySQL database in the system.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'mysql_databases',
    (select count(*) from schema_tables),
    'MySQL Databases',
    false,
    'The mysql_databases table stores the information about each MySQL database in the system.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'mysql_db_users',
    (select count(*) from schema_tables),
    'MySQL DB Users',
    false,
    'The <code>mysql_db_users</code> table stores which <code>mysql_server_users</code> can access which <code>mysql_databases</code>.  The user permissions are also contained in each row.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'mysql_hosts',
    (select count(*) from schema_tables),
    'MySQL Hosts',
    false,
    'The mysql_hosts table stores all of the list of hosts that are allowed to connect to each mysql server.',
    '1.0a100',
    '1.3'
);
insert into schema_tables values(
    'mysql_reserved_words',
    (select count(*) from schema_tables),
    'MySQL Reserved Words',
    true,
    '<code>mysql_reserved_words</code> may not be used for database or table names in MySQL.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'mysql_server_users',
    (select count(*) from schema_tables),
    'MySQL Server Users',
    false,
    'The mysql_server_users table contains all the server-specific information about a mysql_user',
    '1.0a100',
    null
);
insert into schema_tables values(
    'mysql_servers',
    (select count(*) from schema_tables),
    'MySQL Servers',
    false,
    'The mysql_servers table stores the information about each MySQL instance in the system.',
    '1.4',
    null
);
insert into schema_tables values(
    'mysql_users',
    (select count(*) from schema_tables),
    'MySQL Users',
    false,
    'The mysql_users table stores all of the user info that is common for every MySQL server a user has a MySQL user account on.  The server specifics are stored in the mysql_server_users table.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'net_binds',
    (select count(*) from schema_tables),
    'Net Binds',
    false,
    '<code>net_binds</code> stores all of ports that should be bound to
by processes running on the servers.  If any ports is bound to that
is not listed here, it may indicate a security violation.  This
data is also used to open firewall ports.  Each port may also be
periodically monitored for process reliability.
<p>
Four types of IP addresses exist:
<ol>
  <li>wildcard - Processes bind to all available IP addresses on
                 the server.  Monitoring may be performed from
                 anywhere, depending on firewall flags.
  <li>public -   Processes bind to a public IP address.  Monitoring
                 may be performed from the localhost or public
                 network, depending on firewall rules.
  <li>private -  Processes bind to a private IP address.  Monitoring
                 may be performed from the localhost or private
                 network, depending on firewall rules.
  <li>loopback - Processes bind internally in the server.  Monitoring
                 may only be performed from localhost.
</ol>',
    '1.0a100',
    null
);
insert into schema_tables values(
    'net_device_host_routes',
    (select count(*) from schema_tables),
    'Net Device Host Routes',
    false,
    '',
    '1.0a100',
    '1.0a130'
);
insert into schema_tables values(
    'net_device_ids',
    (select count(*) from schema_tables),
    'Net Device IDs',
    true,
    'The net_device_ids contains all the network devices used on Linux servers.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'net_device_local_routes',
    (select count(*) from schema_tables),
    'Net Device Local Routes',
    false,
    '',
    '1.0a100',
    '1.0a130'
);
insert into schema_tables values(
    'net_devices',
    (select count(*) from schema_tables),
    'Net Devices',
    false,
    'The net_devices table contains each device used by Linux servers.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'net_monitoring_times',
    (select count(*) from schema_tables),
    'Net Monitoring Times',
    true,
    '',
    '1.0a100',
    '1.0a103'
);
insert into schema_tables values(
    'net_ports',
    (select count(*) from schema_tables),
    'Net Ports',
    true,
    'The net_ports table contains all of the possible network ports.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'net_protocols',
    (select count(*) from schema_tables),
    'Net Protocols',
    true,
    '<code>net_protocols</code> lists the possible network protocols used in <code>net_binds</code>.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'net_tcp_redirects',
    (select count(*) from schema_tables),
    'Net TCP Redirects',
    false,
    'The net_tcp_redirects table stores all of the xinetd redirect configurations.',
    '1.0a111',
    null
);
insert into schema_tables values(
    'notice_log',
    (select count(*) from schema_tables),
    'Notice Log',
    false,
    'The table notice_log contains information about any late or non-payment notices.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'notice_types',
    (select count(*) from schema_tables),
    'Notice Types',
    true,
    'The table notice_types provides lookup information for the notice_log table',
    '1.0a100',
    null
);
insert into schema_tables values(
    'operating_system_versions',
    (select count(*) from schema_tables),
    'Operating System Versions',
    true,
    'The operating_system_versions table provides all the supported versions of operating_systems.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'operating_systems',
    (select count(*) from schema_tables),
    'Operating Systems',
    true,
    'The operating_systems table stores represents each type of operating system.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'package_categories',
    (select count(*) from schema_tables),
    'Package Categories',
    true,
    'The various categories for package_definitions.',
    '1.0a123',
    null
);
insert into schema_tables values(
    'package_definition_limits',
    (select count(*) from schema_tables),
    'Package Definition Limits',
    false,
    'The package_definition_limits table defines the limits for each package_definition and resource combination.',
    '1.0a123',
    null
);
insert into schema_tables values(
    'package_definitions',
    (select count(*) from schema_tables),
    'Package Definitions',
    false,
    'The package_definitions table stores a list of supported services.',
    '1.0a123',
    null
);
insert into schema_tables values(
    'packages',
    (select count(*) from schema_tables),
    'Packages',
    false,
    'The packages table stores information about each package that businesses have signed up for.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'payment_types',
    (select count(*) from schema_tables),
    'Payment Types',
    true,
    'The payment_types table stores all the acceptable payment forms',
    '1.0a100',
    null
);
insert into schema_tables values(
    'physical_servers',
    (select count(*) from schema_tables),
    'Physical Servers',
    false,
    'The physical servers consume rack space and electricity and optionally provide cluster resources.',
    '1.36',
    null
);
insert into schema_tables values(
    'phone_numbers',
    (select count(*) from schema_tables),
    'Phone Numbers',
    false,
    'The phone_numbers table stores phone numbers that are additional to business_administrators and businesses.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'postgres_backups',
    (select count(*) from schema_tables),
    'PostgreSQL Backups',
    false,
    'The postgres_backups table stores the information about each backup of a PostgreSQL database in the system.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'postgres_databases',
    (select count(*) from schema_tables),
    'PostgreSQL Databases',
    false,
    'The postgres_databases table stores the information about each PostgreSQL database in the system.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'postgres_encodings',
    (select count(*) from schema_tables),
    'PostgreSQL Encodings',
    true,
    'The postgres_encodings table stores the information about each PostgreSQL database encoding supported.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'postgres_reserved_words',
    (select count(*) from schema_tables),
    'PostgreSQL Reserved Words',
    true,
    '<code>postgres_reserved_words</code> may not be used for database or table named in PostgreSQL.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'postgres_server_users',
    (select count(*) from schema_tables),
    'PostgreSQL Server Users',
    false,
    'The postgres_server_users table stores the specific attributes of postgres_users for one server.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'postgres_servers',
    (select count(*) from schema_tables),
    'PostgreSQL Servers',
    false,
    'The postgres_servers table stores the information about each PostgreSQL instance in the system.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'postgres_users',
    (select count(*) from schema_tables),
    'PostgreSQL Users',
    false,
    'The postgres_users table stores all the users for PostgreSQL.
Because a single person may have access to multiple PostgreSQL
servers, this table represents what is common to them across all
machines.  The machine specific details are in the
postgres_server_users table.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'postgres_versions',
    (select count(*) from schema_tables),
    'PostgreSQL Versions',
    true,
    'The <code>postgres_versions</code> is a lookup of all the available versions of PostgreSQL.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'private_ftp_servers',
    (select count(*) from schema_tables),
    'Private FTP Servers',
    false,
    'The private_ftp_servers table contains an entry for each private FTP server hosted.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'processor_types',
    (select count(*) from schema_tables),
    'Processor Types',
    true,
    'The possible types of processors for cluster QoS management.',
    '1.36',
    null
);
insert into schema_tables values(
    'protocols',
    (select count(*) from schema_tables),
    'Protocols',
    true,
    'The protocols table has an entry for each service protocol along with the default port numbers.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'racks',
    (select count(*) from schema_tables),
    'Racks',
    false,
    'Each server farm may manage cluster resources on a per-rack basis.',
    '1.36',
    null
);
insert into schema_tables values(
    'raid_types',
    (select count(*) from schema_tables),
    'RAID Types',
    true,
    'The possible types of RAID configurations for cluster QoS management.',
    '1.36',
    '1.41'
);
insert into schema_tables values(
    'rates',
    (select count(*) from schema_tables),
    'Rates',
    true,
    '',
    '1.0a100',
    '1.0a122'
);
insert into schema_tables values(
    'resellers',
    (select count(*) from schema_tables),
    'Resellers',
    false,
    'A reseller may provide ticket-based support',
    '1.44',
    null
);
insert into schema_tables values(
    'resources',
    (select count(*) from schema_tables),
    'Resources',
    true,
    'The resources table stores a list of resources that may be charged',
    '1.0a100',
    null
);
insert into schema_tables values(
    'schema_columns',
    (select count(*) from schema_tables),
    'Schema Columns',
    true,
    '<code>schema_columns</code> stores the details about the data contained in each column.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'schema_foreign_keys',
    (select count(*) from schema_tables),
    'Schema Foreign Keys',
    true,
    '<code>schema_foreign_keys</code> tables stores all the foreign key info for the database.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'schema_tables',
    (select count(*) from schema_tables),
    'Schema Tables',
    true,
    '<code>schema_tables</code> stores table names, display names, and descriptions for each table.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'schema_types',
    (select count(*) from schema_tables),
    'Schema Types',
    true,
    '<code>schema_types</code> stores names and unique numbers for each type.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'sendmail_smtp_stats',
    (select count(*) from schema_tables),
    'Sendmail SMTP Stats',
    false,
    'The sendmail_smtp_stats table stores stats on SMTP server use.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'server_farms',
    (select count(*) from schema_tables),
    'Server Farms',
    false,
    'The server_farms table stores the details about each unique server farm (or location) that exists.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'server_reports',
    (select count(*) from schema_tables),
    'Server Reports',
    false,
    'Each server_reports its use and load statistics to the database periodically.',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'servers',
    (select count(*) from schema_tables),
    'Servers',
    false,
    'The servers table keeps track of all the servers that are referenced in the database',
    '1.0a100',
    null
);
insert into schema_tables values(
    'service_levels',
    (select count(*) from schema_tables),
    'Service Levels',
    true,
    '',
    '1.0a100',
    '1.0a122'
);
insert into schema_tables values(
    'shells',
    (select count(*) from schema_tables),
    'Shells',
    true,
    'The shells table stores all the shells that may be used in a linux account.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'signup_request_options',
    (select count(*) from schema_tables),
    'Sign-Up Request Options',
    false,
    'The options for each specific sign-up type.',
    '1.23',
    null
);
insert into schema_tables values(
    'signup_requests',
    (select count(*) from schema_tables),
    'Sign-Up Requests',
    false,
    'One sign-up request for any time of service.',
    '1.23',
    null
);
insert into schema_tables values(
    'spam_email_messages',
    (select count(*) from schema_tables),
    'Spam Email Messages',
    false,
    'The spam_email_messages table stores all of the reported spam.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'sr_cpu',
    (select count(*) from schema_tables),
    'Server CPU Report',
    false,
    'sr_cpu - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_db_mysql',
    (select count(*) from schema_tables),
    'Server MySQL Report',
    false,
    'sr_db_mysql - Doesn\'t exist if not a MySQL server',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_db_postgres',
    (select count(*) from schema_tables),
    'Server PostgreSQL Report',
    false,
    'server_rep_db_postgres - Doesn\'t exist in failover state or if not a PostgreSQL server',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_disk_access',
    (select count(*) from schema_tables),
    'Server Disk Access Report',
    false,
    'sr_disk_access - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_disk_mdstat',
    (select count(*) from schema_tables),
    'Server RAID Disk Report',
    false,
    'sr_disk_mdstat - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_disk_space',
    (select count(*) from schema_tables),
    'Server Disk Space Report',
    false,
    '',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_kernel',
    (select count(*) from schema_tables),
    'Server Kernel Report',
    false,
    'sr_kernel - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_load',
    (select count(*) from schema_tables),
    'Server Load Report',
    false,
    'sr_load - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_memory',
    (select count(*) from schema_tables),
    'Server Memory Report',
    false,
    'sr_memory - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_net_devices',
    (select count(*) from schema_tables),
    'Server Net Device Report',
    false,
    'sr_net_devices - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_net_icmp',
    (select count(*) from schema_tables),
    'Server Net ICMP Report',
    false,
    'sr_net_icmp - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_net_ip',
    (select count(*) from schema_tables),
    'Server Net IP Report',
    false,
    'sr_net_ip - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_net_tcp',
    (select count(*) from schema_tables),
    'Server Net TCP Report',
    false,
    'sr_net_tcp - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_net_udp',
    (select count(*) from schema_tables),
    'Server Net UDP Report',
    false,
    'sr_net_udp - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_num_users',
    (select count(*) from schema_tables),
    'Server User Report',
    false,
    '',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_paging',
    (select count(*) from schema_tables),
    'Server Paging Report',
    false,
    'sr_paging - Doesn\'t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_processes',
    (select count(*) from schema_tables),
    'Server Process Report',
    false,
    '/proc/<PID>/status',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_swap_rate',
    (select count(*) from schema_tables),
    'Server Swap Rate Report',
    false,
    'sr_swap_rate - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'sr_swap_size',
    (select count(*) from schema_tables),
    'Server Swap Size Report',
    false,
    'sr_swap_size - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
insert into schema_tables values(
    'system_email_aliases',
    (select count(*) from schema_tables),
    'System Email Aliases',
    false,
    'The system_email_aliases is a list of all entries that are placed in /etc/aliases but are not part of the other tables.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'technologies',
    (select count(*) from schema_tables),
    'Technologies',
    true,
    'The technologies table contains the list of all software packages and the classes they belong to.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'technology_classes',
    (select count(*) from schema_tables),
    'Technology Classes',
    true,
    'The technology_classes table defines the classes that may be used in the technologies table',
    '1.0a100',
    null
);
insert into schema_tables values(
    'technology_names',
    (select count(*) from schema_tables),
    'Technology Names',
    true,
    'The technology_names table contains all of the unique names of software packages that are installed in the servers.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'technology_versions',
    (select count(*) from schema_tables),
    'Technology Versions',
    true,
    'The technology_versions table contains the list of all software packages, owners, and versions.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'ticket_action_types',
    (select count(*) from schema_tables),
    'Ticket Action Types',
    true,
    'Table ticket_action_types is a lookup for all of the possible actions that may be made to a ticket',
    '1.44',
    null
);
insert into schema_tables values(
    'ticket_actions',
    (select count(*) from schema_tables),
    'Ticket Actions',
    false,
    'The ticket_actions table represent a complete history of the changes that have been made to a ticket.
When a ticket is initially created it has no actions.  Any change from its initial state will cause
an action to be logged.',
    '1.44',
    null
);
insert into schema_tables values(
    'ticket_assignments',
    (select count(*) from schema_tables),
    'Ticket Assignments',
    false,
    'Tickets may be assigned to specific administrators at each reseller level.',
    '1.44',
    null
);
insert into schema_tables values(
    'ticket_brand_categories',
    (select count(*) from schema_tables),
    'Ticket Brand Categories',
    false,
    'Each brand may select which categories will be visible for ticket support.',
    '1.44',
    null
);
insert into schema_tables values(
    'ticket_categories',
    (select count(*) from schema_tables),
    'Ticket Categories',
    false,
    'Each ticket may be associated with one of these hierichical categories.',
    '1.44',
    null
);
insert into schema_tables values(
    'ticket_priorities',
    (select count(*) from schema_tables),
    'Ticket Priorities',
    true,
    'Table ticket_priorities is a lookup table for tickets',
    '1.0a100',
    null
);
insert into schema_tables values(
    'ticket_stati',
    (select count(*) from schema_tables),
    'Ticket Statuses',
    true,
    'Table ticket_stati is a lookup table for tickets',
    '1.0a100',
    null
);
insert into schema_tables values(
    'ticket_types',
    (select count(*) from schema_tables),
    'Ticket Types',
    true,
    'Table ticket_types is a lookup for tickets showing types of service requests',
    '1.0a100',
    null
);
insert into schema_tables values(
    'tickets',
    (select count(*) from schema_tables),
    'Tickets',
    false,
    'Table tickets contains information on service requests',
    '1.0a100',
    null
);
insert into schema_tables values(
    'time_zones',
    (select count(*) from schema_tables),
    'Time Zones',
    true,
    'The allowed time zones for a server',
    '1.2',
    null
);
insert into schema_tables values(
    'transaction_types',
    (select count(*) from schema_tables),
    'Transaction Types',
    true,
    'The transaction_types table stores all the types of transactions.',
    '1.0a123',
    null
);
insert into schema_tables values(
    'transactions',
    (select count(*) from schema_tables),
    'Transactions',
    false,
    'The transactions table keeps track of all transactions that have occured with the businesses',
    '1.0a100',
    null
);
insert into schema_tables values(
    'us_states',
    (select count(*) from schema_tables),
    'US States',
    true,
    'The us_states table contains an entry for each state in the United States.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'usernames',
    (select count(*) from schema_tables),
    'Usernames',
    false,
    'The usernames table stores information about each username.
Every username is unique across the system, and may be used
for multiple services.  Regardless of the system, the username
always belongs to one business, and preferrably one actual
person or system.',
    '1.0a100',
    null
);
insert into schema_tables values(
    'virtual_disks',
    (select count(*) from schema_tables),
    'Virtual Disks',
    false,
    'The virtual disk configurations for cluster QoS management.',
    '1.36',
    null
);
insert into schema_tables values(
    'virtual_servers',
    (select count(*) from schema_tables),
    'Virtual Servers',
    false,
    'A virtual server is any server that is a guest in the virtualized clustering.',
    '1.36',
    null
);
insert into schema_tables values(
    'whois_history',
    (select count(*) from schema_tables),
    'Whois History',
    false,
    'The output from whois lookups are logged weekly to keep track of when customers begin and end using the systems.',
    '1.20',
    null
);
commit;

\echo vacuuming
vacuum full analyze schema_tables;
