select "schema".add_table(
    'ticket',
    'action_types',
    'Action Types',
    true,
    'Table action_types is a lookup for the ticket_actions table showing possible actions for a ticket in the tickets table',
    '1.0a100',
    '1.43'
);
select "schema".add_table(
    'ticket',
    'actions',
    'Actions',
    false,
    'Table actions includes information regarding specific actions taken on items in the tickets table',
    '1.0a100',
    '1.43'
);
select "schema".add_table(
    'server',
    'ao_server_daemon_hosts',
    'AOServ Server Daemon Hosts',
    false,
    '<code>ao_server_daemon_hosts</code> stores which hosts may connect to the AOServ Daemon on a server.',
    '1.0a100',
    null
);
select "schema".add_table(
    'server',
    'ao_servers',
    'AOServ Servers',
    false,
    'The ao_servers table keeps track of all the servers that are running the AOServ distribution.',
    '1.0a100',
    null
);
select "schema".add_table(
    'aoserv_permissions',
    'AOServ Permissions',
    true,
    '<code>aoserv_permissions</code> lists all of the possible permissions in the AOServ Platform.',
    '1.21',
    null
);
select "schema".add_table(
    'schema',
    'aoserv_protocols',
    'AOServ Protocols',
    true,
    '<code>aoserv_protocols</code> keeps track of the different versions of the protocol and what is available in that protocol.',
    '1.0a101',
    null
);
select "schema".add_table(
    'aosh',
    'aosh_commands',
    'AOSH Commands',
    true,
    '<code>aosh_commands</code> stores the details about each command that may be used in the AO shell.',
    '1.0a100',
    null
);
select "schema".add_table(
    'architectures',
    'Architectures',
    true,
    'The architectures table provides all the possible computer architectures for the servers table.',
    '1.0a100',
    null
);
select "schema".add_table(
    'backup',
    'backup_data',
    'Backup Data',
    false,
    'The <code>backup_data</code> table stores the details of unique set of backup data.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'backup',
    'backup_levels',
    'Backup Levels',
    true,
    '<code>backup_levels</code> stores all of the possible backup paranoia levels.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'backup',
    'backup_partitions',
    'Backup Partitions',
    false,
    'The <code>backup_partitions</code> table stores the details of each backup location.',
    '1.0a100',
    null
);
select "schema".add_table(
    'backup',
    'backup_reports',
    'Backup Reports',
    false,
    'The <code>backup_reports</code> table stores the daily summary of backup system usage.',
    '1.0a101',
    null
);
select "schema".add_table(
    'backup',
    'backup_retentions',
    'Backup Retentions',
    true,
    '<code>backup_retentions</code> stores all of the possible backup retention times.',
    '1.0a100',
    null
);
select "schema".add_table(
    'accounting',
    'bank_accounts',
    'Bank Accounts',
    false,
    'The bank_accounts table stores all the bank accounts we operate.',
    '1.0a100',
    null
);
select "schema".add_table(
    'accounting',
    'bank_transaction_types',
    'Bank Transaction Types',
    false,
    'The bank_transaction_types table stores all the possible types of transactions for bank_transactions.',
    '1.0a100',
    null
);
select "schema".add_table(
    'accounting',
    'bank_transactions',
    'Bank Transactions',
    false,
    'The bank_transactions table stores all the the transactions that have occured on a bank account.',
    '1.0a100',
    null
);
select "schema".add_table(
    'accounting',
    'banks',
    'Banks',
    false,
    'The banks table stores information about each bank we deal with',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'blackhole_email_addresses',
    'Blackhole Email Addresses',
    false,
    'The blackhole_email_addresses is a list of email addresses in which all email sent to them is immediately discarded via /dev/null.',
    '1.0a100',
    null
);
select "schema".add_table(
    'brands',
    'Brands',
    false,
    'Each brand has separate website, packages, nameservers, and support',
    '1.44',
    null
);
select "schema".add_table(
    'account',
    'business_administrators',
    'Business Administrators',
    false,
    'The business_administrators table stores details about the people who are allowed to access the aoserv and aoweb utilities.',
    '1.0a100',
    null
);
select "schema".add_table(
    'account',
    'business_administrator_permissions',
    'Business Administrator Permissions',
    false,
    'Grants administrative permissions.',
    '1.21',
    null
);
select "schema".add_table(
    'account',
    'business_profiles',
    'Business Profiles',
    false,
    'The business_profiles stores all the old profile data for a business.  This is done so that old contacts may be used in case of an emergency.',
    '1.0a100',
    null
);
select "schema".add_table(
    'account',
    'businesses',
    'Businesses',
    false,
    'The businesses table stores details about businesses',
    '1.0a100',
    null
);
select "schema".add_table(
    'server',
    'business_servers',
    'Business Servers',
    false,
    'The business_servers table stores which servers may be accessed by which business.  A child business can only access a subset of the parent business'' servers.  Only one entry per business is flagged as default.',
    '1.0a100',
    null
);
select "schema".add_table(
    'client_jvm_profile',
    'Client JVM Profile',
    false,
    '',
    '1.0a100',
    '1.76'
);
select "schema".add_table(
    'country_codes',
    'Country Codes',
    true,
    'The country_codes table contains all of the valid country codes.  This data was obtained from http://digitalid.verisign.com/ccodes.html',
    '1.0a100',
    null
);
select "schema".add_table(
    'payment',
    'credit_card_processors',
    'Credit Card Processors',
    false,
    'The credit_card_processors table stores all of the different credit card processing merchant accounts.',
    '1.29',
    null
);
select "schema".add_table(
    'payment',
    'credit_card_transactions',
    'Credit Card Transactions',
    false,
    'The credit_card_transactions table stores the complete history of credit card processor transactions.',
    '1.29',
    null
);
select "schema".add_table(
    'payment',
    'credit_cards',
    'Credit Cards',
    false,
    'The credit_cards table stores all of the client credit card information in an encrypted format.',
    '1.0a100',
    null
);
select "schema".add_table(
    'scm',
    'cvs_repositories',
    'CVS Repositories',
    false,
    'The <code>cvs_repositories</code> table stores the details of each CVSROOT',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'cyrus_imapd_binds',
    'Cyrus IMAPD Binds',
    false,
    'The <code>cyrus_imapd_binds</code> table represents all the ip_address port binding combinations.  The app_protocol of the bind should always be POP3, IMAP2, SIMAP, or SPOP3.',
    '1.81.10',
    null
);
select "schema".add_table(
    'email',
    'cyrus_imapd_servers',
    'Cyrus IMAPD Servers',
    false,
    'The cyrus_imapd_servers table contains a list of all the Cyrus IMAPD servers.',
    '1.81.10',
    null
);
select "schema".add_table(
    'daemon_profile',
    'Daemon Profile',
    false,
    '',
    '1.0a100',
    '1.76'
);
select "schema".add_table(
    'account',
    'disable_log',
    'Disable Log',
    false,
    'The <code>disable_log</code> logs all the times things are disabled.',
    '1.0a100',
    null
);
select "schema".add_table(
    'infrastructure',
    'disk_types',
    'Disk Types',
    true,
    'The possible types of disk interfaces.',
    '1.36',
    '1.41'
);
select "schema".add_table(
    'management',
    'distro_file_types',
    'Distro File Types',
    true,
    'The distro_file_types stores all of the possible file types.',
    '1.0a100',
    null
);
select "schema".add_table(
    'management',
    'distro_files',
    'Distro Files',
    false,
    'The distro_files stores all of the file attributes in the templates.',
    '1.0a100',
    null
);
select "schema".add_table(
    'management',
    'distro_report_types',
    'Distro Report Types',
    true,
    'The distro_report_types stores all of the possible report types.',
    '1.70',
    null
);
select "schema".add_table(
    'dns',
    'dns_forbidden_zones',
    'DNS Forbidden Zones',
    true,
    '<code>dns_forbidden_zones</code> stores all of the DNS zones that may not be hosted by the name servers',
    '1.0a100',
    null
);
select "schema".add_table(
    'dns',
    'dns_records',
    'DNS Records',
    false,
    '<code>dns_records</code> stores all of individual records of the name server.',
    '1.0a100',
    null
);
select "schema".add_table(
    'dns',
    'dns_tlds',
    'DNS TLDs',
    true,
    '<code>dns_tlds</code> stores all of the domains that are considered to be "top level domains".',
    '1.0a100',
    null
);
select "schema".add_table(
    'dns',
    'dns_types',
    'DNS Types',
    true,
    '<code>dns_types</code> stores all of the types of entries that may be placed in a line of a zone file.',
    '1.0a100',
    null
);
select "schema".add_table(
    'dns',
    'dns_zones',
    'DNS Zones',
    false,
    '<code>dns_zones</code> stores all of the DNS zones.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_addresses',
    'Email Addresses',
    false,
    'The email_addresses table stores a central pool of all email addresses.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_attachment_blocks',
    'Email Attachment Blocks',
    false,
    'The email_attachment_blocks table stores all attachment types that are currently blocked.',
    '1.0a116',
    null
);
select "schema".add_table(
    'email',
    'email_attachment_types',
    'Email Attachment Types',
    true,
    '<code>email_attachment_types</code> stores all of the possible attachment extensions that may be blocked.',
    '1.0a116',
    null
);
select "schema".add_table(
    'email',
    'email_blacklists',
    'Email Blacklists',
    false,
    '',
    '1.0a105',
    '1.0a121'
);
select "schema".add_table(
    'email',
    'email_domains',
    'Email Domains',
    false,
    'The email_domains table stores all the domains that the MTA responds to.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_forwarding',
    'Email Forwarding',
    false,
    'The email_forwarding sends email addresssed to email_addresses to another address.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_list_addresses',
    'Email List Addresses',
    false,
    'The email_list_addresses attaches the email_addresses to the email lists.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_lists',
    'Email Lists',
    false,
    'The email_lists table stores pointers to all the list files that are used for email.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_pipe_addresses',
    'Email Pipe Addresses',
    false,
    'The email_pipe_addresses attaches the email_addresses to the email pipes.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_pipes',
    'Email Pipes',
    false,
    'The email_pipes table stores pointers to all the processes that are used for direct delivery of email.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_smtp_relay_types',
    'Email SMTP Relay Types',
    true,
    'The email_smtp_relay_types table stores all the different types of SMTP rules.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_smtp_relays',
    'Email SMTP Relays',
    false,
    'The email_smtp_relays table stores the SMTP server access rules.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'email_smtp_smart_host_domains',
    'Email SMTP Smart Host Domains',
    false,
    'The email_smtp_smart_host_domains table stores optional per-domain settings for email_smtp_smart_hosts.',
    '1.57',
    null
);
select "schema".add_table(
    'email',
    'email_smtp_smart_hosts',
    'Email SMTP Smart Hosts',
    false,
    'The email_smtp_smart_hosts table indicates a SMTP port is configured as a SmartHost for one or more servers.',
    '1.57',
    null
);
select "schema".add_table(
    'email',
    'email_sa_integration_modes',
    'Email SpamAssassin Integration Modes',
    true,
    'The email_sa_integration_modes tables provides all the possible spam assassin itegration modes supported.',
    '1.0a120',
    null
);
select "schema".add_table(
    'account',
    'encryption_keys',
    'Encryption Keys',
    false,
    'The encryption_keys table stores the list of GPG key ids on a per-business basis.',
    '1.23',
    null
);
select "schema".add_table(
    'accounting',
    'expense_categories',
    'Expense Categories',
    false,
    'The expense_categories table is a lookup for bank_transactions, and is used to organize expenditures for accounting purposes.',
    '1.0a100',
    null
);
select "schema".add_table(
    'backup',
    'failover_file_log',
    'Failover File Log',
    false,
    'The failover_file_log records statistics about each finished failover file replication.',
    '1.0a100',
    null
);
select "schema".add_table(
    'backup',
    'failover_file_replications',
    'Failover File Replications',
    false,
    'The failover_file_replications configures the replication of files from servers to failover servers.',
    '1.0a100',
    null
);
select "schema".add_table(
    'backup',
    'failover_file_schedule',
    'Failover File Schedule',
    false,
    'The failover_file_schedule controls when replications occur.',
    '1.0a100',
    null
);
select "schema".add_table(
    'backup',
    'failover_mysql_replications',
    'Failover MySQL Replications',
    false,
    'The failover_mysql_replications indicates a failover replication is using MySQL replication for /var/lib/mysql/... instead of file-based replication.',
    '1.28',
    null
);
select "schema".add_table(
    'backup',
    'file_backups',
    'File Backups',
    false,
    'The <code>file_backups</code> table stores the details of each backed-up file.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'backup',
    'file_backup_devices',
    'File Backup Devices',
    true,
    'The <code>file_backup_devices</code> table stores the details of each device used by the backup system.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'backup',
    'file_backup_roots',
    'File Backup Roots',
    false,
    'The <code>file_backup_roots</code> table stores the entry points for browsing the <code>file_backups</code>.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'backup',
    'file_backup_settings',
    'File Backup Settings',
    false,
    'The <code>file_backup_settings</code> table overrides everything in the backup system except <code>file_backup_devices</code>.',
    '1.0a100',
    null
);
select "schema".add_table(
    'backup',
    'file_backup_stats',
    'File Backup Stats',
    false,
    'The <code>file_backup_stats</code> table stores the details of each backup interation through the filesystem.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'net',
    'firewalld_zones',
    'Firewalld Zones',
    false,
    'The <code>firewalld_zones</code> table defines all Firewall zones used on an AOServer.',
    '1.81.0',
    null
);
select "schema".add_table(
    'ftp',
    'ftp_guest_users',
    'FTP Guest Users',
    false,
    'Each <code>linux_account</code> may optionally be a guest FTP user.  A guest FTP user is restricted to FTP access in their home directory.  The passwd and group files are created such that any username or group in the same business resolve to the correct text names.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_binds',
    'Httpd Binds',
    false,
    'The <code>httpd_binds</code> table represents all the ip_address port binding combinations.  The app_protocol of the bind should always be HTTP or HTTPS.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_jboss_sites',
    'Httpd JBoss Sites',
    false,
    '<code>httpd_jboss_sites</code> ties httpd_sites to a jboss version to its httpd_shared_tomcat JVM.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_jboss_versions',
    'Httpd JBoss Versions',
    true,
    '<code>httpd_jboss_versions</code> is a lookup table containing information about different jboss versions.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_jk_codes',
    'Httpd JK Codes',
    true,
    'The httpd_jk_codes table contains all the possible mod_jk codes.
The codes must be unique for one httpd_sites when the site is used
in multiple httpd_servers.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_jk_protocols',
    'Httpd JK Protocols',
    true,
    'The httpd_jk_protocols table contains all of the possible protocols used by the mod_jk Apache module.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_servers',
    'Httpd Servers',
    false,
    'The httpd_servers table contains a list of all the Apache servers.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_shared_tomcats',
    'Httpd Shared Tomcats',
    false,
    '<code>httpd_shared_tomcats</code> stores information about the JVM shared by httpd_tomcat_shared_sites.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_site_authenticated_locations',
    'Httpd Site Authenticated Locations',
    false,
    'The <code>httpd_site_authenticated_locations</code> configured Apache basic authentication using Location directives.',
    '1.18',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_site_bind_headers',
    'Httpd Site Bind Headers',
    false,
    'The <code>httpd_site_bind_headers</code> configures headers on httpd_site_binds.',
    '1.81.15',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_site_bind_redirects',
    'Httpd Site Bind Redirects',
    false,
    'The <code>httpd_site_bind_redirects</code> adds redirects to httpd_site_binds.',
    '1.81.1',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_site_binds',
    'Httpd Site Binds',
    false,
    'The <code>httpd_site_binds</code> attaches httpd_sites to httpd_binds.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_site_urls',
    'Httpd Site URLs',
    false,
    'The <code>httpd_site_urls</code> stores the hostnames that a site will respond to.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_sites',
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
select "schema".add_table(
    'httpd',
    'httpd_static_sites',
    'Httpd Static Sites',
    false,
    'The <code>httpd_static_sites</code> stores the details of all sites that simply host static content only.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_tomcat_contexts',
    'Httpd Tomcat Contexts',
    false,
    'The <code>httpd_tomcat_contexts</code> stores the details of all contexts for all Tomcat sites.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_tomcat_data_sources',
    'Httpd Tomcat Data Sources',
    false,
    'The <code>httpd_tomcat_data_sources</code> stores the data sources on a per-context basis.',
    '1.5',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_tomcat_parameters',
    'Httpd Tomcat Parameters',
    false,
    'The <code>httpd_tomcat_parameters</code> stores the parameters on a per-context basis.',
    '1.5',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_tomcat_site_jk_mounts',
    'Httpd Tomcat Site JK Mounts',
    false,
    'The <code>httpd_tomcat_site_jk_mounts</code> stores the JkMount and JkUnMount settings for each Tomcat-based site.',
    '1.81.6',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_tomcat_sites',
    'Httpd Tomcat Sites',
    false,
    'The <code>httpd_tomcat_sites</code> stores the details of all sites based on the Tomcat servlet engine.  This includes JBoss, single instance Tomcats, and a Tomcat that runs in a shared Java VM.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_tomcat_shared_sites',
    'Httpd Tomcat Shared Sites',
    false,
    '<code>httpd_tomcat_shared_sites</code> ties the httpd_tomcat_site to its httpd_shared_tomcat JVM.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_tomcat_std_sites',
    'Httpd Tomcat Std Sites',
    false,
    'The <code>httpd_tomcat_std_sites</code> table stores the details for each site that is self contained in its /www directory.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_tomcat_versions',
    'Httpd Tomcat Versions',
    true,
    'The <code>httpd_tomcat_versions</code> is a lookup of all the available versions of Tomcat.',
    '1.0a100',
    null
);
select "schema".add_table(
    'httpd',
    'httpd_workers',
    'Httpd Workers',
    false, 'The httpd_workers table contains all of the workers that are registered on each server.',
    '1.0a100',
    null
);
select "schema".add_table(
    'payment',
    'incoming_payments',
    'Incoming Payments',
    false,
    'The incoming_payments table stores encrypted credit card numbers
associated with transactions.  These numbers are only kept until
the accounting department transfers the data to their records.',
    '1.0a100',
    '1.28'
);
select "schema".add_table(
    'backup',
    'interbase_backups',
    'InterBase Backups',
    false,
    'The interbase_backups table stores the information about each backup of an InterBase database in the system.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'interbase',
    'interbase_databases',
    'InterBase Databases',
    false,
    'The <code>interbase_databases</code> table stores the details of each database.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'interbase',
    'interbase_db_groups',
    'InterBase DB Groups',
    false,
    'The <code>interbase_db_groups</code> table provides groupings of InterBase databases belonging to one <code>linux_group</code>.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'interbase',
    'interbase_reserved_words',
    'InterBase Reserved Words',
    true,
    'The <code>interbase_reserved_words</code> table contains all of the InterBase reserved words.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'interbase',
    'interbase_server_users',
    'InterBase Server Users',
    false,
    'The <code>interbase_server_users</code> grants an <code>interbase_user</code> access to a server.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'interbase',
    'interbase_users',
    'InterBase Users',
    false,
    'The <code>interbase_users</code> table contains the global details for an InterBase user.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'net',
    'ip_addresses',
    'IP Addresses',
    false,
    'The ip_addresses table has an entry for every IP address hosted on our machines.',
    '1.0a100',
    null
);
select "schema".add_table(
    'net',
    'ip_reputation_limiter_limits',
    'IP Reputation Limiter Limits',
    false,
    'The per-class limits for each IP Reputation Limiter.',
    '1.66',
    null
);
select "schema".add_table(
    'net',
    'ip_reputation_limiter_sets',
    'IP Reputation Limiter Sets',
    false,
    'The sets for each IP Reputation Limiter.',
    '1.66',
    null
);
select "schema".add_table(
    'net',
    'ip_reputation_limiters',
    'IP Reputation Limiters',
    false,
    'A network traffic limiter based established IP reputation.',
    '1.66',
    null
);
select "schema".add_table(
    'net',
    'ip_reputation_set_hosts',
    'IP Reputation Set Hosts',
    false,
    'The per-host reputation for each IP Reputation Set.',
    '1.65',
    null
);
select "schema".add_table(
    'net',
    'ip_reputation_set_networks',
    'IP Reputation Set Networks',
    false,
    'The per-network reputation for each IP Reputation Set.',
    '1.65',
    null
);
select "schema".add_table(
    'net',
    'ip_reputation_sets',
    'IP Reputation Sets',
    false,
    'A set of IP reputation on a per-host and per-network basis.',
    '1.65',
    null
);
select "schema".add_table(
    'ticket',
    'languages',
    'Languages',
    true,
    'The languages table provides all the possible languages for brands.',
    '1.44',
    null
);
select "schema".add_table(
    'billing',
    'limits',
    'Limits',
    true,
    '',
    '1.0a100',
    '1.0a122'
);
select "schema".add_table(
    'email',
    'linux_acc_addresses',
    'Linux Account Addresses',
    false,
    'The linux_acc_addresses table links email addresses to linux accounts.',
    '1.0a100',
    null
);
select "schema".add_table(
    'linux',
    'linux_account_types',
    'Linux Account Types',
    true,
    'The linux_account_types table stores all the different types of linux accounts.',
    '1.0a100',
    null
);
select "schema".add_table(
    'linux',
    'linux_accounts',
    'Linux Accounts',
    false,
    'The linux_accounts table stores all of the linux account info that is common to all machines.',
    '1.0a100',
    null
);
select "schema".add_table(
    'linux',
    'linux_group_accounts',
    'Linux Group Accounts',
    false,
    'The linux_group_accounts stores the alternate users for linux groups.',
    '1.0a100',
    null
);
select "schema".add_table(
    'linux',
    'linux_group_types',
    'Linux Group Types',
    true,
    'The linux_group_types table stores all the different types of linux groups.',
    '1.0a100',
    null
);
select "schema".add_table(
    'linux',
    'linux_groups',
    'Linux Groups',
    false,
    'The linux_groups table stores the details of each linux group that are common to every server.',
    '1.0a100',
    null
);
select "schema".add_table(
    'linux',
    'linux_ids',
    'Linux IDs',
    true,
    'The linux_ids is a table of all the GID and UID values that are acceptable for a linux_server_group or linux_server_account.  0-999 are flagged as system and 1000-65533 are user.',
    '1.0a100',
    '1.80'
);
select "schema".add_table(
    'linux',
    'linux_server_accounts',
    'Linux Server Accounts',
    false,
    'The linux_server_accounts table contains the user configuration that is unique to each server.',
    '1.0a100',
    null
);
select "schema".add_table(
    'linux',
    'linux_server_groups',
    'Linux Server Groups',
    false,
    'The linux_server_groups table stores the details about the groups that exist on the servers.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'majordomo_lists',
    'Majordomo Lists',
    false,
    'The majordomo_lists table stores the details of each list in a majordomo_server.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'majordomo_servers',
    'Majordomo Servers',
    false,
    'The majordomo_servers table stores all the details for one domain of Majordomo hosting.',
    '1.0a100',
    null
);
select "schema".add_table(
    'email',
    'majordomo_versions',
    'Majordomo Versions',
    true,
    'The majordomo_versions table contains a list of all the supported versions of the Majordomo manages email list server.',
    '1.0a100',
    null
);
select "schema".add_table(
    'master_history',
    'Master History',
    false,
    '',
    '1.0a100',
    '1.76'
);
select "schema".add_table(
    'master_hosts',
    'Master Hosts',
    false,
    '<code>master_hosts</code> stores which hosts each user may connect from.',
    '1.0a100',
    null
);
select "schema".add_table(
    'master_processes',
    'Master Processes',
    false,
    '',
    '1.0a100',
    null
);
select "schema".add_table(
    'master_server_profile',
    'Master Server Profile',
    false,
    '',
    '1.0a100',
    '1.76'
);
select "schema".add_table(
    'master_server_stats',
    'Master Server Stats',
    false,
    '',
    '1.0a100',
    null
);
select "schema".add_table(
    'server',
    'master_servers',
    'Master Servers',
    false,
    '<code>master_servers</code> stores which servers each user may control.',
    '1.0a100',
    null
);
select "schema".add_table(
    'master_users',
    'Master Users',
    false,
    '<code>master_users</code> stores the authorization information for people that may access the master controller.',
    '1.0a100',
    null
);
select "schema".add_table(
    'accounting',
    'merchant_accounts',
    'Merchant Accounts',
    false,
    'The merchant_accounts contains all the information about the merchant account providers we do business with.',
    '1.0a100',
    '1.28'
);
select "schema".add_table(
    'billing',
    'monthly_charges',
    'Monthly Charges',
    false,
    'The monthly_charges table contains an entry for each transaction that is automatically charged each month.',
    '1.0a100',
    null
);
select "schema".add_table(
    'backup',
    'mysql_backups',
    'MySQL Backups',
    false,
    'The mysql_backups table stores the information about each backup of a MySQL database in the system.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'mysql',
    'mysql_databases',
    'MySQL Databases',
    false,
    'The mysql_databases table stores the information about each MySQL database in the system.',
    '1.0a100',
    null
);
select "schema".add_table(
    'mysql',
    'mysql_db_users',
    'MySQL DB Users',
    false,
    'The <code>mysql_db_users</code> table stores which <code>mysql_server_users</code> can access which <code>mysql_databases</code>.  The user permissions are also contained in each row.',
    '1.0a100',
    null
);
select "schema".add_table(
    'mysql',
    'mysql_hosts',
    'MySQL Hosts',
    false,
    'The mysql_hosts table stores all of the list of hosts that are allowed to connect to each mysql server.',
    '1.0a100',
    '1.3'
);
select "schema".add_table(
    'mysql',
    'mysql_reserved_words',
    'MySQL Reserved Words',
    true,
    '<code>mysql_reserved_words</code> may not be used for database or table names in MySQL.',
    '1.0a100',
    '1.80'
);
select "schema".add_table(
    'mysql',
    'mysql_server_users',
    'MySQL Server Users',
    false,
    'The mysql_server_users table contains all the server-specific information about a mysql_user',
    '1.0a100',
    null
);
select "schema".add_table(
    'mysql',
    'mysql_servers',
    'MySQL Servers',
    false,
    'The mysql_servers table stores the information about each MySQL instance in the system.',
    '1.4',
    null
);
select "schema".add_table(
    'mysql',
    'mysql_users',
    'MySQL Users',
    false,
    'The mysql_users table stores all of the user info that is common for every MySQL server a user has a MySQL user account on.  The server specifics are stored in the mysql_server_users table.',
    '1.0a100',
    null
);
select "schema".add_table(
    'net',
    'net_bind_firewalld_zones',
    'Net Bind Firewalld Zones',
    false,
    'Each port may be independently associated with a specific set of Firewalld Zones.',
    '1.81.0',
    null
);
select "schema".add_table(
    'net',
    'net_binds',
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
select "schema".add_table(
    'net',
    'net_device_host_routes',
    'Net Device Host Routes',
    false,
    '',
    '1.0a100',
    '1.0a130'
);
select "schema".add_table(
    'net',
    'net_device_ids',
    'Net Device IDs',
    true,
    'The net_device_ids contains all the network devices used on Linux servers.',
    '1.0a100',
    null
);
select "schema".add_table(
    'net',
    'net_device_local_routes',
    'Net Device Local Routes',
    false,
    '',
    '1.0a100',
    '1.0a130'
);
select "schema".add_table(
    'net',
    'net_devices',
    'Net Devices',
    false,
    'The net_devices table contains each device used by Linux servers.',
    '1.0a100',
    null
);
select "schema".add_table(
    'monitoring',
    'net_monitoring_times',
    'Net Monitoring Times',
    true,
    '',
    '1.0a100',
    '1.0a103'
);
select "schema".add_table(
    'net',
    'net_ports',
    'Net Ports',
    true,
    'The net_ports table contains all of the possible network ports.',
    '1.0a100',
    '1.80'
);
select "schema".add_table(
    'net',
    'net_protocols',
    'Net Protocols',
    true,
    '<code>net_protocols</code> lists the possible network protocols used in <code>net_binds</code>.',
    '1.0a100',
    '1.80'
);
select "schema".add_table(
    'net',
    'net_tcp_redirects',
    'Net TCP Redirects',
    false,
    'The net_tcp_redirects table stores all of the xinetd redirect configurations.',
    '1.0a111',
    null
);
select "schema".add_table(
    'billing',
    'notice_log',
    'Notice Log',
    false,
    'The table notice_log contains information about any late or non-payment notices.',
    '1.0a100',
    null
);
select "schema".add_table(
    'billing',
    'notice_types',
    'Notice Types',
    true,
    'The table notice_types provides lookup information for the notice_log table',
    '1.0a100',
    null
);
select "schema".add_table(
    'operating_system_versions',
    'Operating System Versions',
    true,
    'The operating_system_versions table provides all the supported versions of operating_systems.',
    '1.0a100',
    null
);
select "schema".add_table(
    'operating_systems',
    'Operating Systems',
    true,
    'The operating_systems table stores represents each type of operating system.',
    '1.0a100',
    null
);
select "schema".add_table(
    'billing',
    'package_categories',
    'Package Categories',
    true,
    'The various categories for package_definitions.',
    '1.0a123',
    null
);
select "schema".add_table(
    'billing',
    'package_definition_limits',
    'Package Definition Limits',
    false,
    'The package_definition_limits table defines the limits for each package_definition and resource combination.',
    '1.0a123',
    null
);
select "schema".add_table(
    'billing',
    'package_definitions',
    'Package Definitions',
    false,
    'The package_definitions table stores a list of supported services.',
    '1.0a123',
    null
);
select "schema".add_table(
    'billing',
    'packages',
    'Packages',
    false,
    'The packages table stores information about each package that businesses have signed up for.',
    '1.0a100',
    null
);
select "schema".add_table(
    'payment',
    'payment_types',
    'Payment Types',
    true,
    'The payment_types table stores all the acceptable payment forms',
    '1.0a100',
    null
);
select "schema".add_table(
    'infrastructure',
    'physical_servers',
    'Physical Servers',
    false,
    'The physical servers consume rack space and electricity and optionally provide cluster resources.',
    '1.36',
    null
);
select "schema".add_table(
    'billing',
    'phone_numbers',
    'Phone Numbers',
    false,
    'The phone_numbers table stores phone numbers that are additional to business_administrators and businesses.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'backup',
    'postgres_backups',
    'PostgreSQL Backups',
    false,
    'The postgres_backups table stores the information about each backup of a PostgreSQL database in the system.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'postgresql',
    'postgres_databases',
    'PostgreSQL Databases',
    false,
    'The postgres_databases table stores the information about each PostgreSQL database in the system.',
    '1.0a100',
    null
);
select "schema".add_table(
    'postgresql',
    'postgres_encodings',
    'PostgreSQL Encodings',
    true,
    'The postgres_encodings table stores the information about each PostgreSQL database encoding supported.',
    '1.0a100',
    null
);
select "schema".add_table(
    'postgresql',
    'postgres_reserved_words',
    'PostgreSQL Reserved Words',
    true,
    '<code>postgres_reserved_words</code> may not be used for database or table named in PostgreSQL.',
    '1.0a100',
    '1.80'
);
select "schema".add_table(
    'postgresql',
    'postgres_server_users',
    'PostgreSQL Server Users',
    false,
    'The postgres_server_users table stores the specific attributes of postgres_users for one server.',
    '1.0a100',
    null
);
select "schema".add_table(
    'postgresql',
    'postgres_servers',
    'PostgreSQL Servers',
    false,
    'The postgres_servers table stores the information about each PostgreSQL instance in the system.',
    '1.0a100',
    null
);
select "schema".add_table(
    'postgresql',
    'postgres_users',
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
select "schema".add_table(
    'postgresql',
    'postgres_versions',
    'PostgreSQL Versions',
    true,
    'The <code>postgres_versions</code> is a lookup of all the available versions of PostgreSQL.',
    '1.0a100',
    null
);
select "schema".add_table(
    'ftp',
    'private_ftp_servers',
    'Private FTP Servers',
    false,
    'The private_ftp_servers table contains an entry for each private FTP server hosted.',
    '1.0a100',
    null
);
select "schema".add_table(
    'infrastructure',
    'processor_types',
    'Processor Types',
    true,
    'The possible types of processors for cluster QoS management.',
    '1.36',
    null
);
select "schema".add_table(
    'net',
    'protocols',
    'Protocols',
    true,
    'The protocols table has an entry for each service protocol along with the default port numbers.',
    '1.0a100',
    null
);
select "schema".add_table(
    'infrastructure',
    'racks',
    'Racks',
    false,
    'Each server farm may manage cluster resources on a per-rack basis.',
    '1.36',
    null
);
select "schema".add_table(
    'infrastructure',
    'raid_types',
    'RAID Types',
    true,
    'The possible types of RAID configurations for cluster QoS management.',
    '1.36',
    '1.41'
);
select "schema".add_table(
    'billing',
    'rates',
    'Rates',
    true,
    '',
    '1.0a100',
    '1.0a122'
);
select "schema".add_table(
    'resellers',
    'Resellers',
    false,
    'A reseller may provide ticket-based support',
    '1.44',
    null
);
select "schema".add_table(
    'billing',
    'resources',
    'Resources',
    true,
    'The resources table stores a list of resources that may be charged',
    '1.0a100',
    null
);
select "schema".add_table(
    'schema',
    'schema_columns',
    'Schema Columns',
    true,
    '<code>schema_columns</code> stores the details about the data contained in each column.',
    '1.0a100',
    null
);
select "schema".add_table(
    'schema',
    'schema_foreign_keys',
    'Schema Foreign Keys',
    true,
    '<code>schema_foreign_keys</code> tables stores all the foreign key info for the database.',
    '1.0a100',
    null
);
select "schema".add_table(
    'schema',
    'schema_tables',
    'Schema Tables',
    true,
    '<code>schema_tables</code> stores table names, display names, and descriptions for each table.',
    '1.0a100',
    null
);
select "schema".add_table(
    'schema',
    'schema_types',
    'Schema Types',
    true,
    '<code>schema_types</code> stores names and unique numbers for each type.',
    '1.0a100',
    null
);
/* TODO: Not yet:
select "schema".add_table(
    'schemas',
    'Schemas',
    true,
    'A schema is one namespace of database objects.',
    '1.81.18',
    null
);
 */
select "schema".add_table(
    'email',
    'sendmail_smtp_stats',
    'Sendmail SMTP Stats',
    false,
    'The sendmail_smtp_stats table stores stats on SMTP server use.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'email',
    'sendmail_binds',
    'Sendmail Binds',
    false,
    'The <code>sendmail_binds</code> table represents all the ip_address port binding combinations.  The app_protocol of the bind should always be SMTP, SMTPS, or submission.',
    '1.81.10',
    null
);
select "schema".add_table(
    'email',
    'sendmail_servers',
    'Sendmail Servers',
    false,
    'The sendmail_servers table contains a list of all the Sendmail servers.',
    '1.81.10',
    null
);
select "schema".add_table(
    'infrastructure',
    'server_farms',
    'Server Farms',
    false,
    'The server_farms table stores the details about each unique server farm (or location) that exists.',
    '1.0a100',
    null
);
select "schema".add_table(
    'monitoring',
    'server_reports',
    'Server Reports',
    false,
    'Each server_reports its use and load statistics to the database periodically.',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'server',
    'servers',
    'Servers',
    false,
    'The servers table keeps track of all the servers that are referenced in the database',
    '1.0a100',
    null
);
select "schema".add_table(
    'billing',
    'service_levels',
    'Service Levels',
    true,
    '',
    '1.0a100',
    '1.0a122'
);
select "schema".add_table(
    'linux',
    'shells',
    'Shells',
    true,
    'The shells table stores all the shells that may be used in a linux account.',
    '1.0a100',
    null
);
select "schema".add_table(
    'signup_request_options',
    'Sign-Up Request Options',
    false,
    'The options for each specific sign-up type.',
    '1.23',
    null
);
select "schema".add_table(
    'signup_requests',
    'Sign-Up Requests',
    false,
    'One sign-up request for any time of service.',
    '1.23',
    null
);
select "schema".add_table(
    'email',
    'spam_email_messages',
    'Spam Email Messages',
    false,
    'The spam_email_messages table stores all of the reported spam.',
    '1.0a100',
    null
);
select "schema".add_table(
    'monitoring',
    'sr_cpu',
    'Server CPU Report',
    false,
    'sr_cpu - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_db_mysql',
    'Server MySQL Report',
    false,
    'sr_db_mysql - Doesn''t exist if not a MySQL server',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_db_postgres',
    'Server PostgreSQL Report',
    false,
    'server_rep_db_postgres - Doesn''t exist in failover state or if not a PostgreSQL server',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_disk_access',
    'Server Disk Access Report',
    false,
    'sr_disk_access - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_disk_mdstat',
    'Server RAID Disk Report',
    false,
    'sr_disk_mdstat - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_disk_space',
    'Server Disk Space Report',
    false,
    '',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_kernel',
    'Server Kernel Report',
    false,
    'sr_kernel - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_load',
    'Server Load Report',
    false,
    'sr_load - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_memory',
    'Server Memory Report',
    false,
    'sr_memory - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_net_devices',
    'Server Net Device Report',
    false,
    'sr_net_devices - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_net_icmp',
    'Server Net ICMP Report',
    false,
    'sr_net_icmp - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_net_ip',
    'Server Net IP Report',
    false,
    'sr_net_ip - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_net_tcp',
    'Server Net TCP Report',
    false,
    'sr_net_tcp - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_net_udp',
    'Server Net UDP Report',
    false,
    'sr_net_udp - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_num_users',
    'Server User Report',
    false,
    '',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_paging',
    'Server Paging Report',
    false,
    'sr_paging - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_processes',
    'Server Process Report',
    false,
    '/proc/<PID>/status',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_swap_rate',
    'Server Swap Rate Report',
    false,
    'sr_swap_rate - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'monitoring',
    'sr_swap_size',
    'Server Swap Size Report',
    false,
    'sr_swap_size - Doesn''t exist in failover state',
    '1.0a100',
    '1.30'
);
select "schema".add_table(
    'tls',
    'ssl_certificate_names',
    'SSL Certificate Names',
    false,
    'The ssl_certificate_names contains all of the names associated with SSL certificates.',
    '1.81.10',
    null
);
select "schema".add_table(
    'tls',
    'ssl_certificate_other_uses',
    'SSL Certificate Other Uses',
    false,
    'The ssl_certificate_other_uses contains additional descriptions of how SSL certificates are used.',
    '1.81.16',
    null
);
select "schema".add_table(
    'tls',
    'ssl_certificates',
    'SSL Certificates',
    false,
    'The ssl_certificates contains all of the names and paths of managed SSL certificates.',
    '1.81.10',
    null
);
select "schema".add_table(
    'email',
    'system_email_aliases',
    'System Email Aliases',
    false,
    'The system_email_aliases is a list of all entries that are placed in /etc/aliases but are not part of the other tables.',
    '1.0a100',
    null
);
select "schema".add_table(
    'technologies',
    'Technologies',
    true,
    'The technologies table contains the list of all software packages and the classes they belong to.',
    '1.0a100',
    null
);
select "schema".add_table(
    'technology_classes',
    'Technology Classes',
    true,
    'The technology_classes table defines the classes that may be used in the technologies table',
    '1.0a100',
    null
);
select "schema".add_table(
    'technology_names',
    'Technology Names',
    true,
    'The technology_names table contains all of the unique names of software packages that are installed in the servers.',
    '1.0a100',
    null
);
select "schema".add_table(
    'technology_versions',
    'Technology Versions',
    true,
    'The technology_versions table contains the list of all software packages, owners, and versions.',
    '1.0a100',
    null
);
select "schema".add_table(
    'ticket',
    'ticket_action_types',
    'Ticket Action Types',
    true,
    'Table ticket_action_types is a lookup for all of the possible actions that may be made to a ticket',
    '1.44',
    null
);
select "schema".add_table(
    'ticket',
    'ticket_actions',
    'Ticket Actions',
    false,
    'The ticket_actions table represent a complete history of the changes that have been made to a ticket.
When a ticket is initially created it has no actions.  Any change from its initial state will cause
an action to be logged.',
    '1.44',
    null
);
select "schema".add_table(
    'ticket',
    'ticket_assignments',
    'Ticket Assignments',
    false,
    'Tickets may be assigned to specific administrators at each reseller level.',
    '1.44',
    null
);
select "schema".add_table(
    'ticket',
    'ticket_brand_categories',
    'Ticket Brand Categories',
    false,
    'Each brand may select which categories will be visible for ticket support.',
    '1.44',
    null
);
select "schema".add_table(
    'ticket',
    'ticket_categories',
    'Ticket Categories',
    false,
    'Each ticket may be associated with one of these hierichical categories.',
    '1.44',
    null
);
select "schema".add_table(
    'ticket',
    'ticket_priorities',
    'Ticket Priorities',
    true,
    'Table ticket_priorities is a lookup table for tickets',
    '1.0a100',
    null
);
select "schema".add_table(
    'ticket',
    'ticket_stati',
    'Ticket Statuses',
    true,
    'Table ticket_stati is a lookup table for tickets',
    '1.0a100',
    null
);
select "schema".add_table(
    'ticket',
    'ticket_types',
    'Ticket Types',
    true,
    'Table ticket_types is a lookup for tickets showing types of service requests',
    '1.0a100',
    null
);
select "schema".add_table(
    'ticket',
    'tickets',
    'Tickets',
    false,
    'Table tickets contains information on service requests',
    '1.0a100',
    null
);
select "schema".add_table(
    'server',
    'time_zones',
    'Time Zones',
    true,
    'The allowed time zones for a server',
    '1.2',
    null
);
select "schema".add_table(
    'billing',
    'transaction_types',
    'Transaction Types',
    true,
    'The transaction_types table stores all the types of transactions.',
    '1.0a123',
    null
);
select "schema".add_table(
    'billing',
    'transactions',
    'Transactions',
    false,
    'The transactions table keeps track of all transactions that have occured with the businesses',
    '1.0a100',
    null
);
select "schema".add_table(
    'us_states',
    'US States',
    true,
    'The us_states table contains an entry for each state in the United States.',
    '1.0a100',
    null
);
select "schema".add_table(
    'usernames',
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
select "schema".add_table(
    'infrastructure',
    'virtual_disks',
    'Virtual Disks',
    false,
    'The virtual disk configurations for cluster QoS management.',
    '1.36',
    null
);
select "schema".add_table(
    'infrastructure',
    'virtual_servers',
    'Virtual Servers',
    false,
    'A virtual server is any server that is a guest in the virtualized clustering.',
    '1.36',
    null
);
select "schema".add_table(
    'billing',
    'whois_history',
    'Whois History',
    false,
    'The output from whois lookups are logged weekly to keep track of when customers begin and end using the systems.',
    '1.20',
    null
);
