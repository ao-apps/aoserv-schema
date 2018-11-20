select aosh.add_command(
  'clear',
  null,
  'clears the screen',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'echo',
  null,
  'echoes the parameters to standard output',
  '[<i>params</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'exit',
  null,
  'exits the shell',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'invalidate',
  null,
  'globally invalidates a table',
  '<i>table_name</i> [<i>server</i>]',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'invalidate',
  null,
  'globally invalidates a table',
  '<i>table_name</i> [<i>ao_servers.hostname</i> or <i>servers.package.name</i>/<i>servers.name</i> or <i>servers.pkey</i>]',
  '1.31',
  null
);
select aosh.add_command(
  'jobs',
  null,
  'lists all of the background processes',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'ping',
  null,
  'times the communication with the server',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'repeat',
  null,
  'repeatedly executes a command',
  '<i>count</i> <i>command</i> [<i>params</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'su',
  null,
  'switches to a different user',
  '<i>username</i> [<i>command</i> [<i>params</i>]]',
  '1.0a100',
  null
);
select aosh.add_command(
  'time',
  null,
  'times a command',
  '<i>command</i> [<i>params</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'whoami',
  null,
  'displays who is logged in',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_mrtg_file',
  'ao_servers',
  'gets a file from the MRTG report directory',
  '<i>ao_server</i> <i>filename</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_ups_status',
  'ao_servers',
  'gets the status of the UPS powering this server',
  '<i>ao_server</i>',
  '1.63',
  null
);
select aosh.add_command(
  'restart_apache',
  'ao_servers',
  'restarts the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_cron',
  'ao_servers',
  'restarts the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_interbase',
  'ao_servers',
  'restarts the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'restart_mysql',
  'ao_servers',
  'restarts the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'restart_xfs',
  'ao_servers',
  'restarts the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_xvfb',
  'ao_servers',
  'restarts the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_apache',
  'ao_servers',
  'starts the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_cron',
  'ao_servers',
  'starts the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_interbase',
  'ao_servers',
  'starts the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'start_mysql',
  'ao_servers',
  'starts the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'start_xfs',
  'ao_servers',
  'starts the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_xvfb',
  'ao_servers',
  'starts the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_apache',
  'ao_servers',
  'stops the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_cron',
  'ao_servers',
  'stops the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_interbase',
  'ao_servers',
  'stops the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'stop_mysql',
  'ao_servers',
  'stops the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'stop_xfs',
  'ao_servers',
  'stops the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_xvfb',
  'ao_servers',
  'stops the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'help',
  'aosh',
  'aosh_commands',
  'displays the help screen',
  '[<b>syntax</b>|<i>command</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  '?',
  'aosh',
  'aosh_commands',
  'displays the help screen',
  '[<b>syntax</b>|<i>command</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_backup_data',
  'backup',
  'backup_data',
  'gets the contents of a backup data set',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_unused_backup_data',
  'backup',
  'backup_data',
  'removes backup data that if no longer referenced',
  '<i>pkey</i> [...]',
  '1.0a100',
  '1.0a108'
);
select aosh.add_command(
  'get_backup_partition_total_size',
  'backup',
  'backup_partitions',
  'gets the total size of a backup partition',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_backup_partition_used_size',
  'backup',
  'backup_partitions',
  'gets the disk space used on a backup partition',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_blackhole_email_address',
  'email',
  'blackhole_email_addresses',
  'stops emails from being discarded sent to /dev/null',
  '<i>address</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_business_administrator',
  'business_administrators',
  'adds a business administrator to the list of people who may maintain the account',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>}',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'add_business_administrator',
  'business_administrators',
  'adds a business administrator to the list of people who may maintain the account',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>} <i>enable_email_support</i>',
  '1.44',
  null
);
select aosh.add_command(
  'check_business_administrator_password',
  'business_administrators',
  'checks the format of a password for a business administrator',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_business_administrator_username',
  'business_administrators',
  'checks the format of a business administrator username',
  '<i>username</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'crypt',
  'business_administrators',
  'encrypts a password as used in Apache password lists',
  '<i>password</i> [<i>salt</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_business_administrator',
  'business_administrators',
  'disables a business administrator account',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_business_administrator',
  'business_administrators',
  'enables a business administrator account',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_business_administrator_password_set',
  'business_administrators',
  'determines if a business administrator password is set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_business_administrator',
  'business_administrators',
  'removes the administrative access for a user',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_business_administrator_password',
  'business_administrators',
  'sets the password used for administrative access',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_business_administrator_profile',
  'business_administrators',
  'sets the profile associated with a business administrator',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_business_profile',
  'business_profiles',
  'adds a new business profile to a business',
  '<i>business</i> <i>name</i> <i>is_private</i> <i>phone</i> {""|<i>fax</i>} <i>address1</i> {""|<i>address2</i>} <i>city</i> {""|<i>state</i>} <i>country</i> {""|<i>zip</i>} <i>send_invoice</i> <i>billing_contact</i> <i>billing_email</i> <i>technical_contact</i> <i>technical_email</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_business_server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  '1.0a101'
);
select aosh.add_command(
  'add_business_server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i> <i>can_configure_backup</i>',
  '1.0a102',
  '1.30'
);
select aosh.add_command(
  'add_business_server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i>',
  '1.31',
  null
);
select aosh.add_command(
  'remove_business_server',
  'business_servers',
  'removes a business'' access to a server',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_default_business_server',
  'business_servers',
  'sets the default server for a business',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_business',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_businesses</i> <i>bill_parent</i>',
  '1.0a100',
  '1.0a101'
);
select aosh.add_command(
  'add_business',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_backup_server</i> <i>can_add_businesses</i> <i>bill_parent</i>',
  '1.0a102',
  '1.0a102'
);
select aosh.add_command(
  'add_business',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_backup_server</i> <i>can_add_businesses</i> <i>can_see_prices</i> <i>bill_parent</i>',
  '1.0a103',
  null
);
select aosh.add_command(
  'cancel_business',
  'businesses',
  'cancels a business',
  '<i>accounting_code</i> <i>cancel_reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_accounting',
  'businesses',
  'checks the format of an accounting code',
  '<i>accounting_code</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_business',
  'businesses',
  'disables a business and everything in it, except its business administrators',
  '<i>accounting</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_business',
  'businesses',
  'enables a business and everything in it',
  '<i>accounting</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_accounting',
  'businesses',
  'generates a unique accounting code based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_root_business',
  'businesses',
  'gets the name of the root business in the business tree',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_accounting_available',
  'businesses',
  'checks the availability of an accounting code',
  '<i>accounting_code</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'move_business',
  'businesses',
  'moves all of the resources for one business from one server to another server',
  '<i>business</i> <i>from_ao_server</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_business_accounting',
  'businesses',
  'changes the accounting code that uniquely identifies a business',
  '<i>old_accounting</i> <i>new_accounting</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_credit_card',
  'credit_cards',
  'adds a credit card to a business',
  '<i>business</i> <i>enc_card_number</i> <i>card_info</i> <i>enc_expiration_month</i> <i>enc_expiration_year</i> <i>enc_cardholder_name</i> <i>enc_street_address</i> <i>enc_city</i> {""|<i>enc_state</i>} {""|<i>enc_zip</i>} <i>use_monthly</i> {""|<i>description</i>}',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'decline_credit_card',
  'credit_cards',
  'declines and disables a credit card',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_credit_card',
  'credit_cards',
  'removes a credit card from a business',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_cvs_repository',
  'cvs_repositories',
  'adds a CVS repository to a server',
  '<i>ao_server</i> <i>path</i> <i>username</i> <i>group</i> <i>mode</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_cvs_repositories',
  'cvs_repositories',
  'disables a CVS repository',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_cvs_repositories',
  'cvs_repositories',
  'enables a CVS repository',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_cvs_repository',
  'cvs_repositories',
  'removes a CVS repository from a server',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_cvs_repository_backup_retention',
  'cvs_repositories',
  'sets the backup retention for a CVS repository',
  '<i>ao_server</i> <i>path</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_cvs_repository_mode',
  'cvs_repositories',
  'sets the directory permissions of a CVS repository',
  '<i>ao_server</i> <i>path</i> <i>mode</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_distro',
  'distro_files',
  'starts the distribution verification on a server',
  '<i>ao_server</i> <i>include_user</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_dns_record',
  'dns',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>mx_priority</i>} {<i>hostname</i>|<i>ip_address</i>}',
  '1.0a100',
  '1.0a126'
);
select aosh.add_command(
  'add_dns_record',
  'dns',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>mx_priority</i>} {<i>hostname</i>|<i>ip_address</i>} {""|<i>ttl</i>}',
  '1.0a127',
  '1.71'
);
select aosh.add_command(
  'add_dns_record',
  'dns',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>priority</i>} {""|<i>weight</i>} {""|<i>port</i>} {<i>hostname</i>|<i>ip_address</i>|<i>destination</i>} {""|<i>ttl</i>}',
  '1.72',
  null
);
select aosh.add_command(
  'remove_dns_record',
  'dns',
  'dns_records',
  'removes a record from a name server zone',
  '<i>pkey</i>',
  '1.0a100',
  '1.74'
);
select aosh.add_command(
  'remove_dns_record',
  'dns',
  'dns_records',
  'removes a record from a name server zone',
  '{<i>pkey</i>|<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {<i>hostname</i>|<i>ip_address</i>|<i>destination</i>}}',
  '1.75',
  null
);
select aosh.add_command(
  'add_dns_zone',
  'dns',
  'dns_zones',
  'adds a zone to the name servers',
  '<i>package</i> <i>zone</i> <i>ip_address</i>',
  '1.0a100',
  '1.0a126'
);
select aosh.add_command(
  'add_dns_zone',
  'dns',
  'dns_zones',
  'adds a zone to the name servers',
  '<i>package</i> <i>zone</i> <i>ip_address</i> <i>ttl</i>',
  '1.0a127',
  null
);
select aosh.add_command(
  'set_dns_zone_ttl',
  'dns',
  'dns_zones',
  'sets the default TTL value for a name server zone',
  '<i>zone</i> <i>ttl</i>',
  '1.0a127',
  null
);
select aosh.add_command(
  'check_dns_zone',
  'dns',
  'dns_zones',
  'checks the format of a zone name',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_dns_zone_available',
  'dns',
  'dns_zones',
  'checks the availability of a DNS zone',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'print_zone_file',
  'dns',
  'dns_zones',
  'generates a zone file',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_dns_zone',
  'dns',
  'dns_zones',
  'removes a zone from the name servers',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_address',
  'email',
  'email_addresses',
  'checks the format of an email address',
  '<i>address</i> [<i>...</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_address',
  'email',
  'email_addresses',
  'removes an email address and all associated resources',
  '<i>address</i> <i>ao_server> [<i>...</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_email_domain',
  'email',
  'email_domains',
  'adds a new email domain',
  '<i>domain</i> <i>ao_server</i> <i>package</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_domain',
  'email',
  'email_domains',
  'checks the format of an email domain',
  '<i>domain</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_email_domain_available',
  'email',
  'email_domains',
  'checks the availability of an email domain',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_domain',
  'email',
  'email_domains',
  'removes an email domain and all associated email addresses',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_email_forwarding',
  'email',
  'email_forwarding',
  'attaches a forwarding address to an email address',
  '<i>from_address</i> <i>ao_server</i> <i>to_address</i> [<i>from_address</i> <i>ao_server</i> <i>to_address</i>]...',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_forwarding',
  'email',
  'email_forwarding',
  'checks the format of a the destination for email forwarding',
  '<i>from_address</i> <i>to_address</i> [<i>from_address</i> <i>to_address</i>]...',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'remove_email_forwarding',
  'email',
  'email_forwarding',
  'detaches a forwarding address from an email address',
  '<i>from_address</i> <i>ao_server</i> <i>to_address</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_email_list_address',
  'email',
  'email_list_addresses',
  'attaches an email address to an email list',
  '<i>address</i> <i>path</i> <i>ao_server</i> [<i>address</i> <i>path</i> <i>ao_server</i>]...',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_list_address',
  'email',
  'email_list_addresses',
  'detaches an email address from an email list',
  '<i>address</i> <i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_email_list',
  'email',
  'email_lists',
  'adds a new email list',
  '<i>ao_server</i> <i>path</i> <i>username</i> <i>group</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_list_path',
  'email',
  'email_lists',
  'checks the format of an email list path',
  '<i>path</i> [<i>...</i>]',
  '1.0a100',
  '1.80.1'
);
select aosh.add_command(
  'check_email_list_path',
  'email',
  'email_lists',
  'checks the format of an email list path',
  '<i>ao_server</i> <i>path</i>',
  '1.80.2',
  null
);
select aosh.add_command(
  'disable_email_list',
  'email',
  'email_lists',
  'disables an email list',
  '<i>path</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_email_list',
  'email',
  'email_lists',
  'enables an email list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_email_list',
  'email',
  'email_lists',
  'gets the list of addresses for a list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_list',
  'email',
  'email_lists',
  'removes an email list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_email_list',
  'email',
  'email_lists',
  'sets the list of addresses for a list',
  '<i>path</i> <i>ao_server</i> <i>list_contents</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_email_list_backup_retention',
  'email',
  'email_lists',
  'sets the backup retention for a list',
  '<i>path</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_email_pipe_address',
  'email',
  'email_pipe_addresses',
  'attaches an email address to an email pipe',
  '<i>address</i> <i>pipe_pkey</i> [<i>address</i> <i>pipe_pkey</i>]...',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_pipe_address',
  'email',
  'email_pipe_addresses',
  'detaches an email address from an email pipe',
  '<i>address</i> <i>pipe_pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_email_pipe',
  'email',
  'email_pipes',
  'adds a new email pipe',
  '<i>ao_server</i> <i>path</i> <i>package</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'add_email_pipe',
  'email',
  'email_pipes',
  'adds a new email pipe',
  '<i>ao_server</i> <i>command</i> <i>package</i>',
  '1.80.0',
  null
);
select aosh.add_command(
  'disable_email_pipe',
  'email',
  'email_pipes',
  'disables an email pipe',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_email_pipe',
  'email',
  'email_pipes',
  'enables an email pipe',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_pipe',
  'email',
  'email_pipes',
  'removes an email pipe',
  '<i>pipe_pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'adds a SMTP relay rule',
  '<i>package</i> {""|<i>ao_server</i>} <i>host</i> <i>type</i> {""|<i>duration</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'disables a SMTP access rule',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'enables a SMTP access rule',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'refresh_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'refreshes a SMTP access rule',
  '<i>pkey</i> {""|<i>min_duration</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'removes a SMTP access rule',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_failover_file_replication_activity',
  'backup',
  'failover_file_replications',
  'gets the most recently reported replication activity',
  '<i>from_server</i> <i>to_server</i> <i>path</i>',
  '1.76',
  null
);
select aosh.add_command(
  'add_file_backup_device',
  'backup',
  'file_backup_devices',
  'creates a new FileBackupDevice',
  '<i>device</i> <i>can_backup</i> <i>description</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'get_file_backup',
  'backup',
  'file_backups',
  'gets the contents of a file backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_file_backup',
  'backup',
  'file_backups',
  'removes a backup copy of a file from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>server</i> <i>path</i> <i>package</i> <i>backup_level</i> <i>backup_retention</i> <i>recurse</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i>',
  '1.31',
  '1.61'
);
select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i> <i>required</i>',
  '1.62',
  null
);
select aosh.add_command(
  'remove_file_backup_setting',
  'backup',
  'file_backup_settings',
  'removes a FileBackupSetting',
  '<i>server</i> <i>path</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_file_backup_setting',
  'backup',
  'file_backup_settings',
  'removes a FileBackupSetting',
  '<i>replication</i> <i>path</i>',
  '1.31',
  null
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>server</i> <i>path</i> <i>package</i> <i>backup_level</i> <i>backup_retention</i> <i>recurse</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i>',
  '1.31',
  '1.61'
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i> <i>required</i>',
  '1.62',
  null
);
select aosh.add_command(
  'add_ftp_guest_user',
  'ftp_guest_users',
  'adds a new FTP guest user',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_ftp_guest_user',
  'ftp_guest_users',
  'removes a FTP guest user',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_httpd_jboss_site',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'add_httpd_jboss_site',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} {""|<i>php_version</i>} <i>enable_cgi</i> <i>enable_ssi</i> <i>enable_htaccess</i> <i>enable_indexes</i> <i>enable_follow_symlinks</i> [<i>alternate_http_hostname</i>]...',
  '1.80.1',
  '1.81.5'
);
select aosh.add_command(
  'add_httpd_jboss_site',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.81.6',
  '1.81.9'
);
select aosh.add_command(
  'add_httpd_jboss_site',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> [<i>alternate_http_hostname</i>]...',
  '1.81.10',
  null
);
select aosh.add_command(
  'get_httpd_server_concurrency',
  'httpd_servers',
  'gets the current concurrency of an HTTP server instance',
  '<i>ao_server</i> {""|<i>name</i>}',
  '1.81.11',
  null
);
select aosh.add_command(
  'add_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'adds a new Multi-Site Tomcat JVM to a server',
  '<i>tomcat_name</i> <i>ao_server</i> <i>tomcat_version</i> <i>linux_server_account</i> <i>linux_server_group</i> <i>is_secure</i> <i>is_overflow</i>',
  '1.0a100',
  '1.81.9'
);
select aosh.add_command(
  'add_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'adds a new Multi-Site Tomcat JVM to a server',
  '<i>tomcat_name</i> <i>ao_server</i> <i>tomcat_version</i> <i>linux_server_account</i> <i>linux_server_group</i>',
  '1.81.10',
  null
);
select aosh.add_command(
  'check_shared_tomcat_name',
  'httpd_shared_tomcats',
  'checks the format of a Multi-Site Tomcat JVM name',
  '<i>shared_tomcat_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'disables a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'enables a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_shared_tomcat_name',
  'httpd_shared_tomcats',
  'generates a unique Multi-Site Tomcat JVM name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_shared_tomcat_name_available',
  'httpd_shared_tomcats',
  'determines if a name may be used for a Multi-Site Tomcat JVM',
  '<i>name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'removes a multi-site Tomcat JVM from the servers',
  '<i>name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_config_backup_retention',
  'httpd_shared_tomcats',
  'sets the config file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_shared_tomcat_file_backup_retention',
  'httpd_shared_tomcats',
  'sets the file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_shared_tomcat_is_manual',
  'httpd_shared_tomcats',
  'sets the is_manual flag for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>is_manual</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_log_backup_retention',
  'httpd_shared_tomcats',
  'sets the log file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_shared_tomcat_max_post_size',
  'httpd_shared_tomcats',
  'sets the maximum POST size for a Multi-Site Tomcat installation',
  '<i>name</i> <i>ao_server</i> {""|<i>max_post_size</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_unpack_wars',
  'httpd_shared_tomcats',
  'sets the unpackWARs setting for a Multi-Site Tomcat installation',
  '<i>name</i> <i>ao_server</i> <i>unpack_wars</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_auto_deploy',
  'httpd_shared_tomcats',
  'sets the autoDeploy setting for a Multi-Site Tomcat installation',
  '<i>name</i> <i>ao_server</i> <i>auto_deploy</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_version',
  'httpd_shared_tomcats',
  'sets the Tomcat version for a Multi-Site Tomcat installation',
  '<i>name</i> <i>ao_server</i> <i>series</i>[.<i>major</i>[.<i>minor</i>]]',
  '1.81.12',
  null
);
select aosh.add_command(
  'disable_httpd_site_bind',
  'httpd_site_binds',
  'disables one network port of a web site',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_httpd_site_bind',
  'httpd_site_binds',
  'enables one network port of a web site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_bind_is_manual',
  'httpd_site_binds',
  'sets the is_manual flag for one network port of a web site',
  '<i>pkey</i> <i>is_manual</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_bind_redirect_to_primary_hostname',
  'httpd_site_binds',
  'sets the redirect_to_primary_hostname flag for one network port of a web site',
  '<i>pkey</i> <i>redirect_to_primary_hostname</i>',
  '1.19',
  null
);
select aosh.add_command(
  'add_httpd_site_url',
  'httpd_site_urls',
  'adds a hostname to a web site',
  '<i>httpd_site_bind_pkey</i> <i>hostname</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_httpd_site_url',
  'httpd_site_urls',
  'removes a hostname from a web site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_primary_httpd_site_url',
  'httpd_site_urls',
  'sets the primary hostname for one specific IP address and port',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_site_name',
  'httpd_sites',
  'checks the format of a site name',
  '<i>site_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_httpd_site',
  'httpd_sites',
  'disables a web site, including its Java virtual machine and all network ports',
  '<i>site_name</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_httpd_site',
  'httpd_sites',
  'enables a web site, including its Java virtual machine and all network ports',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_site_name',
  'httpd_sites',
  'generates a unique site name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_awstats_file',
  'httpd_sites',
  'gets a file from the AWStats report',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> {""|<i>query_string</i>}',
  '1.0a128',
  null
);
select aosh.add_command(
  'initialize_httpd_site_passwd_file',
  'httpd_sites',
  'creates the default conf/passwd file',
  '<i>site_name</i> <i>ao_server</i> <i>username</i> <i>password</i>',
  '1.0a100',
  '1.0a128'
);
select aosh.add_command(
  'is_site_name_available',
  'httpd_sites',
  'determines if a site name is available',
  '<i>site_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_httpd_site',
  'httpd_sites',
  'removes a web site from the servers',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_config_backup_retention',
  'httpd_sites',
  'sets the config file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_file_backup_retention',
  'httpd_sites',
  'sets the file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_ftp_backup_retention',
  'httpd_sites',
  'sets the ftp file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_is_manual',
  'httpd_sites',
  'sets the is_manual flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>is_manual</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_log_backup_retention',
  'httpd_sites',
  'sets the log file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_server_admin',
  'httpd_sites',
  'sets the administrative email address for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>email_address</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_php_version',
  'httpd_sites',
  'sets the PHP version for a web site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>php_version</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_cgi',
  'httpd_sites',
  'sets the enable_cgi flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_cgi</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_ssi',
  'httpd_sites',
  'sets the enable_ssi flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_ssi</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_htaccess',
  'httpd_sites',
  'sets the enable_htaccess flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_htaccess</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_indexes',
  'httpd_sites',
  'sets the enable_indexes flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_indexes</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_follow_symlinks',
  'httpd_sites',
  'sets the enable_follow_symlinks flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_follow_symlinks</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_anonymous_ftp',
  'httpd_sites',
  'sets the enable_anonymous_ftp flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_anonymous_ftp</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_block_trace_track',
  'httpd_sites',
  'sets the block_trace_track flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_trace_track</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_scm',
  'httpd_sites',
  'sets the block_scm flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_scm</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_core_dumps',
  'httpd_sites',
  'sets the block_core_dumps flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_core_dumps</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_editor_backups',
  'httpd_sites',
  'sets the block_editor_backups flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_editor_backups</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'wait_for_httpd_site_rebuild',
  'httpd_sites',
  'waits for any pending or processing changes to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_httpd_site_authenticated_location',
  'httpd_site_authenticated_locations',
  'adds an authenticated location to a web site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>is_regular_expression</i> <i>auth_name</i> {""|<i>auth_group_file</i>} {""|<i>auth_user_file</i>} <i>require</i> {""|<i>handler</i>}',
  '1.81.13',
  null
);
select aosh.add_command(
  'set_httpd_site_authenticated_location_attributes',
  'httpd_site_authenticated_locations',
  'updates an authenticated location on a web site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>is_regular_expression</i> <i>auth_name</i> {""|<i>auth_group_file</i>} {""|<i>auth_user_file</i>} <i>require</i> {""|*|<i>handler</i>}',
  '1.81.13',
  null
);
select aosh.add_command(
  'add_httpd_tomcat_context',
  'httpd_tomcat_contexts',
  'adds a context (webapp) to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>}',
  '1.0a100',
  '1.81.2'
);
select aosh.add_command(
  'add_httpd_tomcat_context',
  'httpd_tomcat_contexts',
  'adds a context (webapp) to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>} <i>server_xml_configured</i>',
  '1.81.3',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_context',
  'httpd_tomcat_contexts',
  'removes a context (webapp) from a Tomcat site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_context_attributes',
  'httpd_tomcat_contexts',
  'sets the attributes for a context (webapp) on a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>old_path</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>new_path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>}',
  '1.0a100',
  '1.81.2'
);
select aosh.add_command(
  'set_httpd_tomcat_context_attributes',
  'httpd_tomcat_contexts',
  'sets the attributes for a context (webapp) on a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>old_path</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>new_path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>} <i>server_xml_configured</i>',
  '1.81.3',
  null
);
select aosh.add_command(
  'add_httpd_tomcat_data_source',
  'httpd_tomcat_data_sources',
  'adds a data source to a Tomcat context (webapp)',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>name</i> <i>driver_class_name</i> <i>url</i> <i>username</i> <i>password</i> <i>max_active</i> <i>max_idle</i> <i>max_wait</i> {""|<i>validation_query</i>}',
  '1.5',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_data_source',
  'httpd_tomcat_data_sources',
  'removes a data source from a Tomcat context (webapp)',
  '<i>pkey</i>',
  '1.5',
  null
);
select aosh.add_command(
  'update_httpd_tomcat_data_source',
  'httpd_tomcat_data_sources',
  'updates a Tomcat context (webapp) data source',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>old_name</i> <i>new_name</i> <i>driver_class_name</i> <i>url</i> <i>username</i> <i>password</i> <i>max_active</i> <i>max_idle</i> <i>max_wait</i> {""|<i>validation_query</i>}',
  '1.5',
  null
);
select aosh.add_command(
  'add_httpd_tomcat_parameter',
  'httpd_tomcat_parameters',
  'adds a parameter to a Tomcat context (webapp)',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>name</i> <i>value</i> <i>override</i> {""|<i>description</i>}',
  '1.5',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_parameter',
  'httpd_tomcat_parameters',
  'removes a parameter from a Tomcat context (webapp)',
  '<i>pkey</i>',
  '1.5',
  null
);
select aosh.add_command(
  'update_httpd_tomcat_parameter',
  'httpd_tomcat_parameters',
  'updates a Tomcat context (webapp) parameter',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>old_name</i> <i>new_name</i> <i>value</i> <i>override</i> {""|<i>description</i>}',
  '1.5',
  null
);
select aosh.add_command(
  'add_httpd_tomcat_site_jk_mount',
  'httpd_tomcat_site_jk_mounts',
  'adds a JkMount or JkUnMount to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>mount</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_site_jk_mount',
  'httpd_tomcat_site_jk_mounts',
  'removes a JkMount or JkUnMount from a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_site_use_apache',
  'httpd_tomcat_sites',
  'sets the use_apache flag for a Tomcat-enabled web site',
  '<i>site_name</i> <i>ao_server</i> <i>use_apache</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_site_block_webinf',
  'httpd_tomcat_sites',
  'sets the block_webinf flag for a Tomcat-enabled web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_webinf</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'start_jvm',
  'httpd_tomcat_sites',
  'starts the Java VM',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_jvm',
  'httpd_tomcat_sites',
  'stops the Java VM',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_httpd_tomcat_shared_site',
  'httpd_tomcat_shared_sites',
  'creates a new web site space running a shared Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} {""|<i>shared_tomcat_name</i>} {""|<i>tomcat_version</i>} <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'add_httpd_tomcat_shared_site',
  'httpd_tomcat_shared_sites',
  'creates a new web site space running a shared Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} {""|<i>shared_tomcat_name</i>} {""|<i>tomcat_version</i>} <i>primary_http_hostname</i> {""|<i>content_source</i>} {""|<i>php_version</i>} <i>enable_cgi</i> <i>enable_ssi</i> <i>enable_htaccess</i> <i>enable_indexes</i> <i>enable_follow_symlinks</i> [<i>alternate_http_hostname</i>]...',
  '1.80.1',
  '1.81.5'
);
select aosh.add_command(
  'add_httpd_tomcat_shared_site',
  'httpd_tomcat_shared_sites',
  'creates a new web site space running a shared Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} {""|<i>shared_tomcat_name</i>} {""|<i>tomcat_version</i>} <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.81.6',
  '1.81.9'
);
select aosh.add_command(
  'add_httpd_tomcat_shared_site',
  'httpd_tomcat_shared_sites',
  'creates a new web site space running a shared Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} {<i>shared_tomcat_name</i>} <i>primary_http_hostname</i> [<i>alternate_http_hostname</i>]...',
  '1.81.10',
  null
);
select aosh.add_command(
  'add_httpd_tomcat_std_site',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'add_httpd_tomcat_std_site',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} {""|<i>php_version</i>} <i>enable_cgi</i> <i>enable_ssi</i> <i>enable_htaccess</i> <i>enable_indexes</i> <i>enable_follow_symlinks</i> [<i>alternate_http_hostname</i>]...',
  '1.80.1',
  '1.81.5'
);
select aosh.add_command(
  'add_httpd_tomcat_std_site',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.81.6',
  '1.81.9'
);
select aosh.add_command(
  'add_httpd_tomcat_std_site',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> [<i>alternate_http_hostname</i>]...',
  '1.81.10',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_std_site_max_post_size',
  'httpd_tomcat_std_sites',
  'sets the maximum POST size for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> {""|<i>max_post_size</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_std_site_unpack_wars',
  'httpd_tomcat_std_sites',
  'sets the unpackWARs setting for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> <i>unpack_wars</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_std_site_auto_deploy',
  'httpd_tomcat_std_sites',
  'sets the autoDeploy setting for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> <i>auto_deploy</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_std_site_version',
  'httpd_tomcat_std_sites',
  'sets the Tomcat version for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> <i>series</i>[.<i>major</i>[.<i>minor</i>]]',
  '1.81.12',
  null
);
select aosh.add_command(
  'add_incoming_payment',
  'incoming_payments',
  'attaches payment data to a transaction',
  '<i>transaction_id</i> <i>enc_cardholder_name</i> <i>enc_card_number</i> <i>enc_expiration_month</i> <i>enc_expiration_year</i>',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'remove_incoming_payment',
  'incoming_payments',
  'removes payment data from a transaction',
  '<i>transaction_id</i>',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'get_interbase_backup',
  'backup',
  'interbase_backups',
  'retrieves the contents of an InterBase backup from a backup server',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_backup',
  'backup',
  'interbase_backups',
  'removes the contents of an InterBase backup from the backup servers',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_interbase_database',
  'interbase',
  'interbase_databases',
  'creates a new InterBase database',
  '<i>ao_server</i> <i>db_group</i> <i>name</i> <i>datdba</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'backup_interbase_database',
  'interbase',
  'interbase_databases',
  'dumps the contents of a database onto a backup server',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_database_name',
  'interbase',
  'interbase_databases',
  'checks the validity for an InterBase database name',
  '<i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'dump_interbase_database',
  'interbase',
  'interbase_databases',
  'dumps the contents of an InterBase database',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'generate_interbase_database_name',
  'interbase',
  'interbase_databases',
  'generates a per-server and per-group unique InterBase database name',
  '<i>ao_server</i> <i>db_group</i> <i>template_base</i> <i>template_added</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'is_interbase_database_name_available',
  'interbase',
  'interbase_databases',
  'checks the availability of an InterBase database name',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_database',
  'interbase',
  'interbase_databases',
  'removes an InterBase database from the system',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_interbase_db_group',
  'interbase',
  'interbase_db_groups',
  'adds an InterBase database group to the system',
  '<i>ao_server</i> <i>db_group</i> <i>linux_group</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_db_group_name',
  'interbase',
  'interbase_db_groups',
  'checks for format of an InterBase database group name',
  '<i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'generate_interbase_db_group_name',
  'interbase',
  'interbase_db_groups',
  'generates a per-server unique InterBase database group name',
  '<i>ao_server</i> <i>template_base</i> <i>template_added</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'is_interbase_db_group_name_available',
  'interbase',
  'interbase_db_groups',
  'determines if an InterBase database group name is available',
  '<i>ao_server</i> <i>db_group</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_db_group',
  'interbase',
  'interbase_db_groups',
  'removes an InterBase database group from the system',
  '<i>ao_server</i> <i>db_group</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_interbase_server_user',
  'interbase',
  'interbase_server_users',
  'grants an InterBase account access to a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'disable_interbase_server_user',
  'interbase',
  'interbase_server_users',
  'disables an InterBase account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'enable_interbase_server_user',
  'interbase',
  'interbase_server_users',
  'enables an InterBase account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'is_interbase_server_user_password_set',
  'interbase',
  'interbase_server_users',
  'determines if an InterBase account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_server_user',
  'interbase',
  'interbase_server_users',
  'revokes an InterBase account''s access to a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_interbase_server_user_password',
  'interbase',
  'interbase_server_users',
  'sets the password for an InterBase accounts access to one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_interbase_user',
  'interbase',
  'interbase_users',
  'adds an InterBase user to the system',
  '<i>username</i> {""|<i>first_name</i>} {""|<i>middle_name</i>} {""|<i>last_name</i>}',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'are_interbase_user_passwords_set',
  'interbase',
  'interbase_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for an InterBase account are set',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_password',
  'interbase',
  'interbase_users',
  'checks the strength of a password that will be used for an InterBase account',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_username',
  'interbase',
  'interbase_users',
  'determines if a username may be used for an InterBase account',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'disable_interbase_user',
  'interbase',
  'interbase_users',
  'disables an InterBase account, including its access to all database servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'enable_interbase_user',
  'interbase',
  'interbase_users',
  'enables an InterBase account, including its access to all database servers',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_user',
  'interbase',
  'interbase_users',
  'removes an InterBase user from the system',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_interbase_user_password',
  'interbase',
  'interbase_users',
  'sets the password used to access an InterBase user',
  '<i>username</i> {""|<i>password</i>}',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'wait_for_interbase_rebuild',
  'interbase',
  'interbase_users',
  'waits for any pending or processing InterBase server updates to complete',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_ip_address',
  'net',
  'ip_addresses',
  'checks the format of an IP address',
  '<i>ip_address</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'is_ip_address_used',
  'net',
  'ip_addresses',
  'determines if an IP address is currently in use',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i>',
  '1.0a100',
  '1.32'
);
select aosh.add_command(
  'is_ip_address_used',
  'net',
  'ip_addresses',
  'determines if an IP address is currently in use',
  '<i>ip_address</i> <i>server</i> <i>net_device</i>',
  '1.33',
  null
);
select aosh.add_command(
  'move_ip_address',
  'net',
  'ip_addresses',
  'moves an IP address to a new server',
  '<i>ip_address</i> <i>from_server</i> <i>from_net_device</i> <i>to_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_ip_address_dhcp_address',
  'net',
  'ip_addresses',
  'sets the new IP address for a DHCP-enabled device',
  '<i>pkey</i> <i>ip_address</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_ip_address_hostname',
  'net',
  'ip_addresses',
  'sets the hostname associated with an IP address',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i> <i>hostname</i>',
  '1.0a100',
  '1.32'
);
select aosh.add_command(
  'set_ip_address_hostname',
  'net',
  'ip_addresses',
  'sets the hostname associated with an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>hostname</i>',
  '1.33',
  null
);
select aosh.add_command(
  'set_ip_address_monitoring_enabled',
  'net',
  'ip_addresses',
  'enables or disables the monitoring of an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>enabled</i>',
  '1.81.17',
  null
);
select aosh.add_command(
  'set_ip_address_package',
  'net',
  'ip_addresses',
  'sets the package ownership of an IP address',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i> <i>package</i>',
  '1.0a100',
  '1.32'
);
select aosh.add_command(
  'set_ip_address_package',
  'net',
  'ip_addresses',
  'sets the package ownership of an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>package</i>',
  '1.33',
  null
);
select aosh.add_command(
  'add_ip_reputation',
  'net',
  'ip_reputation_sets',
  'adds reputation for a host and its network',
  '<i>identifier</i> <i>ip_address</i> {<b>uncertain</b>|<b>definite</b>} {<b>good</b>|<b>bad</b>} <i>score</i>',
  '1.65',
  null
);
select aosh.add_command(
  'add_linux_acc_address',
  'email',
  'linux_acc_addresses',
  'attaches an email address to a Linux account',
  '<i>address</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_acc_address',
  'email',
  'linux_acc_addresses',
  'detaches an email address from a Linux account',
  '<i>address</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_linux_account',
  'linux_accounts',
  'adds a new Linux account',
  '<i>username</i> <i>primary_group</i> <i>full_name</i> {""|<i>office_location</i>} {""|<i>office_phone</i>} {""|<i>home_phone</i>} <i>type</i> <i>shell</i>',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'add_linux_account',
  'linux_accounts',
  'adds a new Linux account',
  '<i>username</i> <i>primary_group</i> {""|<i>full_name</i>} {""|<i>office_location</i>} {""|<i>office_phone</i>} {""|<i>home_phone</i>} <i>type</i> <i>shell</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'are_linux_account_passwords_set',
  'linux_accounts',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a Linux account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_linux_account_name',
  'linux_accounts',
  'checks the format of a Linux account full name',
  '<i>full_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_linux_account_password',
  'linux_accounts',
  'checks the format of a password for a Linux account',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_linux_account_username',
  'linux_accounts',
  'checks the format of a Linux account username',
  '<i>username</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'disable_linux_account',
  'linux_accounts',
  'disables a Linux account and removes its access to all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_linux_account',
  'linux_accounts',
  'enables a Linux account and restores its access to all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_password',
  'linux_accounts',
  'generates a random, valid password',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_account',
  'linux_accounts',
  'removes a Linux account from all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_home_phone',
  'linux_accounts',
  'sets the home phone number for a Linux account',
  '<i>username</i> {""|<i>phone_number</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_name',
  'linux_accounts',
  'sets the full name for a Linux account',
  '<i>username</i> <i>full_name</i>',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'set_linux_account_name',
  'linux_accounts',
  'sets the full name for a Linux account',
  '<i>username</i> {""|<i>full_name</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_linux_account_office_location',
  'linux_accounts',
  'sets the office location for a Linux account',
  '<i>username</i> {""|<i>location</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_office_phone',
  'linux_accounts',
  'sets the office phone number for a Linux account',
  '<i>username</i> {""|<i>phone_number</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_password',
  'linux_accounts',
  'sets the password for a Linux account on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_shell',
  'linux_accounts',
  'sets the shell used by a Linux account',
  '<i>username</i> <i>shell</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_linux_account_rebuild',
  'linux_accounts',
  'waits for any pending or current server config rebuild to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_linux_group_account',
  'linux_group_accounts',
  'grants a Linux account access to a Linux group',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_group_account',
  'linux_group_accounts',
  'revokes access of a Linux account to a Linux group',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_primary_linux_group_account',
  'linux_group_accounts',
  'sets the primary Linux group associated with a Linux account',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_linux_group',
  'linux_groups',
  'adds a new Linux group',
  '<i>group</i> <i>package</i> <i>type</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_linux_group_name',
  'linux_groups',
  'checks validity of a Linux group name',
  '<i>groupname</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_linux_group_name_available',
  'linux_groups',
  'check availability Linux group name',
  '<i>groupname</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_group',
  'linux_groups',
  'removes a Linux group',
  '<i>group</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_linux_server_account',
  'linux_server_accounts',
  'grants a Linux account access to a server',
  '<i>username</i> <i>ao_server</i> {""|<i>home_directory</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'compare_linux_server_account_password',
  'linux_server_accounts',
  'compares the provided password to the password on the server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'copy_home_directory',
  'linux_server_accounts',
  'copies the contents of a home directory from one server to another',
  '<i>username</i> <i>from_ao_server</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'copy_linux_server_account_password',
  'linux_server_accounts',
  'copies the password of one Linux account to another account',
  '<i>from_username</i> <i>from_ao_server</i> <i>to_username</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_linux_server_account',
  'linux_server_accounts',
  'disables a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_linux_server_account',
  'linux_server_accounts',
  'enables a Linux account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_autoresponder_content',
  'linux_server_accounts',
  'gets the message body of an autoresponder',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_cron_table',
  'linux_server_accounts',
  'gets the contents of a user cron table',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_imap_folder_sizes',
  'linux_server_accounts',
  'gets the file sizes for IMAP folders',
  '<i>username</i> <i>ao_server</i> <i>folder_name</i> [...]',
  '1.0a120',
  null
);
select aosh.add_command(
  'get_inbox_attributes',
  'linux_server_accounts',
  'gets the attributes of an email inbox',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_linux_server_account_password_set',
  'linux_server_accounts',
  'determines if a Linux account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_linux_server_account_procmail_manual',
  'linux_server_accounts',
  'determines if a Linux account is in manual procmail mode',
  '<i>username</i> <i>ao_server</i>',
  '1.0a116',
  null
);
select aosh.add_command(
  'remove_linux_server_account',
  'linux_server_accounts',
  'removes a Linux account from a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_autoresponder',
  'linux_server_accounts',
  'configures an autoresponder',
  '<i>username</i> <i>ao_server</i> <i>from_address</i> <i>from_domain</i> <i>subject</i> <i>content</i> <i>enabled</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_cron_table',
  'linux_server_accounts',
  'sets the contents of a user cron table',
  '<i>username</i> <i>ao_server</i> <i>cron_table</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_server_account_cron_backup_retention',
  'linux_server_accounts',
  'sets the cron file backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_linux_server_account_home_backup_retention',
  'linux_server_accounts',
  'sets the home directory backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_linux_server_account_inbox_backup_retention',
  'linux_server_accounts',
  'sets the email inbox directory backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_linux_server_account_junk_email_retention',
  'linux_server_accounts',
  'sets the number of days emails will remain in the Junk folder',
  '<i>username</i> <i>ao_server</i> {""|<i>days</i>}',
  '1.0a120',
  null
);
select aosh.add_command(
  'set_linux_server_account_password',
  'linux_server_accounts',
  'sets the password for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_server_account_spamassassin_integration_mode',
  'linux_server_accounts',
  'sets the behavior of the SpamAssassin filters',
  '<i>username</i> <i>ao_server</i> <i>mode</i>',
  '1.0a120',
  null
);
select aosh.add_command(
  'set_linux_server_account_spamassassin_required_score',
  'linux_server_accounts',
  'sets the required score for the SpamAssassin filters',
  '<i>username</i> <i>ao_server</i> <i>required_score</i>',
  '1.0a124',
  null
);
select aosh.add_command(
  'set_linux_server_account_trash_email_retention',
  'linux_server_accounts',
  'sets the number of days emails will remain in the Trash folder',
  '<i>username</i> <i>ao_server</i> {""|<i>days</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_server_account_use_inbox',
  'linux_server_accounts',
  'sets whether or not email will be stored in the inbox',
  '<i>username</i> <i>ao_server</i> <i>use_inbox</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_linux_server_group',
  'linux_server_groups',
  'adds a Linux group to a server',
  '<i>group</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_server_group',
  'linux_server_groups',
  'removes a Linux group from a server',
  '<i>group</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_majordomo_list',
  'email',
  'majordomo_lists',
  'adds a new Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_majordomo_list_name',
  'email',
  'majordomo_lists',
  'checks the format of a Majordomo list name',
  '<i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_majordomo_info_file',
  'email',
  'majordomo_lists',
  'gets the info file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_majordomo_intro_file',
  'email',
  'majordomo_lists',
  'gets the intro file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_info_file',
  'email',
  'majordomo_lists',
  'sets the info file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i> <i>file</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_intro_file',
  'email',
  'majordomo_lists',
  'sets the intro file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i> <i>file</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_majordomo_server',
  'email',
  'majordomo_servers',
  'adds a new Majordomo server',
  '<i>domain</i> <i>ao_server</i> <i>linux_account</i> <i>linux_group</i> <i>version</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_majordomo_server',
  'email',
  'majordomo_servers',
  'remvoes a Majordomo server',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_server_backup_retention',
  'email',
  'majordomo_servers',
  'sets the backup retention for a Majordomo server',
  '<i>domain</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'get_mysql_backup',
  'backup',
  'mysql_backups',
  'gets the contents of a MySQL database backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_mysql_backup',
  'backup',
  'mysql_backups',
  'removes a MySQL database backup from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_mysql_database',
  'mysql',
  'mysql_databases',
  'adds a new MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>package</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'add_mysql_database',
  'mysql',
  'mysql_databases',
  'adds a new MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>package</i>',
  '1.4',
  null
);
select aosh.add_command(
  'backup_mysql_database',
  'mysql',
  'mysql_databases',
  'stores a compressed dump of a MySQL database in the backup system',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'backup_mysql_database',
  'mysql',
  'mysql_databases',
  'stores a compressed dump of a MySQL database in the backup system',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  '1.30'
);
select aosh.add_command(
  'check_mysql_database_name',
  'mysql',
  'mysql_databases',
  'checks the format of a MySQL database name',
  '<i>database_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'dump_mysql_database',
  'mysql',
  'mysql_databases',
  'dumps the contents of a MySQL database',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'dump_mysql_database',
  'mysql',
  'mysql_databases',
  'dumps the contents of a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  '1.80'
);
select aosh.add_command(
  'dump_mysql_database',
  'mysql',
  'mysql_databases',
  'dumps the contents of a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>gzip</i>',
  '1.80.0',
  null
);
select aosh.add_command(
  'generate_mysql_database_name',
  'mysql',
  'mysql_databases',
  'generates a unique MySQL database name',
  '<i>template_base</i> <i>template_added</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_mysql_database_name_available',
  'mysql',
  'mysql_databases',
  'determines if a MySQL database name is available',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'is_mysql_database_name_available',
  'mysql',
  'mysql_databases',
  'determines if a MySQL database name is available',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'remove_mysql_database',
  'mysql',
  'mysql_databases',
  'removes a MySQL database',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'remove_mysql_database',
  'mysql',
  'mysql_databases',
  'removes a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'set_mysql_database_backup_retention',
  'mysql',
  'mysql_databases',
  'sets the backup retention for a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'set_mysql_database_backup_retention',
  'mysql',
  'mysql_databases',
  'sets the backup retention for a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.4',
  '1.30'
);
select aosh.add_command(
  'wait_for_mysql_database_rebuild',
  'mysql',
  'mysql_databases',
  'waits for any pending or current MySQL database config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i>',
  '1.0a100',
  '1.0a110'
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i>',
  '1.0a111',
  '1.3'
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i> <i>can_create_view</i> <i>can_show_view</i> <i>can_create_routine</i> <i>can_alter_routine</i> <i>can_execute</i>',
  '1.4',
  '1.53'
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i> <i>can_create_view</i> <i>can_show_view</i> <i>can_create_routine</i> <i>can_alter_routine</i> <i>can_execute</i> <i>can_event</i> <i>can_trigger</i>',
  '1.54',
  '1.81.1'
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_reference</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i> <i>can_create_view</i> <i>can_show_view</i> <i>can_create_routine</i> <i>can_alter_routine</i> <i>can_execute</i> <i>can_event</i> <i>can_trigger</i>',
  '1.81.2',
  null
);
select aosh.add_command(
  'remove_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'removes a MySQL user''s access to a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'remove_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'removes a MySQL user''s access to a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i>',
  '1.4',
  null
);
select aosh.add_command(
  'wait_for_mysql_db_user_rebuild',
  'mysql',
  'mysql_db_users',
  'waits for any pending or current MySQL permission config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_mysql_host_rebuild',
  'mysql',
  'mysql_hosts',
  'waits for any pending or current MySQL host permission rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'check_mysql_server_name',
  'mysql',
  'mysql_servers',
  'checks the format of a MySQL server name',
  '<i>name</i>',
  '1.4',
  null
);
select aosh.add_command(
  'is_mysql_server_name_available',
  'mysql',
  'mysql_servers',
  'determines if a MySQL server name is available',
  '<i>server_name</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'restart_mysql',
  'mysql',
  'mysql_servers',
  'restarts the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'start_mysql',
  'mysql',
  'mysql_servers',
  'starts the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'stop_mysql',
  'mysql',
  'mysql_servers',
  'stops the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'wait_for_mysql_server_rebuild',
  'mysql',
  'mysql_servers',
  'waits for any pending or current database server config rebuilds to complete',
  '<i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'add_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'adds a MySQL user to a server',
  '<i>username</i> <i>ao_server</i> <i>host</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'add_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'adds a MySQL user to a server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>host</i>',
  '1.4',
  null
);
select aosh.add_command(
  'disable_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'disables a MySQL account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'disable_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'disables a MySQL account on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>reason</i>',
  '1.4',
  null
);
select aosh.add_command(
  'enable_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'enables a MySQL account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'enable_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'enables a MySQL account on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'is_mysql_server_user_password_set',
  'mysql',
  'mysql_server_users',
  'determines if a MySQL account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'is_mysql_server_user_password_set',
  'mysql',
  'mysql_server_users',
  'determines if a MySQL account password is set',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'remove_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'removes a MySQL user from a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'remove_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'removes a MySQL user from a server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'set_mysql_server_user_password',
  'mysql',
  'mysql_server_users',
  'sets the password for a MySQL user on one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'set_mysql_server_user_password',
  'mysql',
  'mysql_server_users',
  'sets the password for a MySQL user on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>password</i>',
  '1.4',
  null
);
select aosh.add_command(
  'add_mysql_user',
  'mysql',
  'mysql_users',
  'adds a MySQL user to the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'are_mysql_user_passwords_set',
  'mysql',
  'mysql_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a MySQL account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_mysql_password',
  'mysql',
  'mysql_users',
  'checks the format of a password for a MySQL user',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_mysql_username',
  'mysql',
  'mysql_users',
  'checks the format of a MySQL username',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_mysql_user',
  'mysql',
  'mysql_users',
  'disables a MySQL account on all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_mysql_user',
  'mysql',
  'mysql_users',
  'enables a MySQL account on all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_mysql_user',
  'mysql',
  'mysql_users',
  'removes a MySQL user from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_mysql_user_password',
  'mysql',
  'mysql_users',
  'sets the password for a MySQL user on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_mysql_user_rebuild',
  'mysql',
  'mysql_users',
  'waits for any pending or current MySQL user config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>ao_server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> {""|<i>monitoring_delay</i>} {""|<i>monitoring_parameter</i>} {""|<i>monitoring_contact</i>} {""|<i>monitoring_info</i>}',
  '1.0a100',
  '1.0a103'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>ao_server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> <i>monitoring_enabled</i>',
  '1.0a104',
  '1.32'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> <i>monitoring_enabled</i>',
  '1.33',
  '1.80.2'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>monitoring_enabled</i> [<i>firewalld_zone</i>] [...]',
  '1.81.0',
  null
);
select aosh.add_command(
  'remove_net_bind',
  'net',
  'net_binds',
  'removes a net binds from the system',
  '<i>pkey</i>',
  '1.0a104',
  null
);
select aosh.add_command(
  'set_net_bind_firewalld_zones',
  'net',
  'net_binds',
  'sets the enabled firewalld zones for this port',
  '<i>pkey</i> [<i>firewalld_zone</i>] [...]',
  '1.81.0',
  null
);
select aosh.add_command(
  'set_net_bind_monitoring_enabled',
  'net',
  'net_binds',
  'enables or disables the monitoring of this port',
  '<i>pkey</i> <i>enabled</i>',
  '1.0a105',
  null
);
select aosh.add_command(
  'set_net_bind_open_firewall',
  'net',
  'net_binds',
  'opens or closes the firewall filters associated with this port',
  '<i>pkey</i> <i>open_firewall</i>',
  '1.0a105',
  '1.80.2'
);
select aosh.add_command(
  'add_notice_log',
  'billing',
  'notice_log',
  'adds a notice log entry to a business',
  '<i>business</i> <i>billing_contact</i> <i>email_address</i> <i>balance</i> <i>type</i> <i>transaction_id</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_package',
  'billing',
  'packages',
  'adds a new package to a business',
  '<i>package</i> <i>business</i> <i>service_level</i> <i>monthly_rate</i> {""|<i>user_limit</i>} <i>additional_user_rate</i> {""|<i>pop_limit</i>} <i>additional_pop_rate</i>',
  '1.0a100',
  '1.0a122'
);
select aosh.add_command(
  'add_package',
  'billing',
  'packages',
  'adds a new package to a business',
  '<i>package</i> <i>business</i> <i>package_definition</i>',
  '1.0a123',
  null
);
select aosh.add_command(
  'check_package_name',
  'billing',
  'packages',
  'checks the format of a package name',
  '<i>package</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'disable_package',
  'billing',
  'packages',
  'disables a package and everything in it, except its business administrators',
  '<i>name</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_package',
  'billing',
  'packages',
  'enables a package and everything in it',
  '<i>name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_package_name',
  'billing',
  'packages',
  'generates a unique package name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_package_name_available',
  'billing',
  'packages',
  'checks the availability of a package name',
  '<i>package</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_postgres_backup',
  'backup',
  'postgres_backups',
  'gets the contents of a PostgreSQL database backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_postgres_backup',
  'backup',
  'postgres_backups',
  'removes a PostgreSQL database backup from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_postgres_database',
  'postgresql',
  'postgres_databases',
  'adds a new PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>datdba</i> <i>encoding</i>',
  '1.0a100',
  '1.26'
);
select aosh.add_command(
  'add_postgres_database',
  'postgresql',
  'postgres_databases',
  'adds a new PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>datdba</i> <i>encoding</i> <i>enable_postgis</i>',
  '1.27',
  null
);
select aosh.add_command(
  'backup_postgres_database',
  'postgresql',
  'postgres_databases',
  'stores a compressed dump of a PostgreSQL database in the backup system',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_postgres_database_name',
  'postgresql',
  'postgres_databases',
  'checks the format of a PostgreSQL database name',
  '<i>database_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'dump_postgres_database',
  'postgresql',
  'postgres_databases',
  'dumps the contents of a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'dump_postgres_database',
  'postgresql',
  'postgres_databases',
  'dumps the contents of a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>gzip</i>',
  '1.80.0',
  null
);
select aosh.add_command(
  'generate_postgres_database_name',
  'postgresql',
  'postgres_databases',
  'generates a unique PostgreSQL database name',
  '<i>template_base</i> <i>template_added</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_postgres_database_name_available',
  'postgresql',
  'postgres_databases',
  'determines if a PostgreSQL database name is available',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_postgres_database',
  'postgresql',
  'postgres_databases',
  'removes a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_postgres_database_backup_retention',
  'postgresql',
  'postgres_databases',
  'sets the backup retention for a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'wait_for_postgres_database_rebuild',
  'postgresql',
  'postgres_databases',
  'waits for any pending or current database config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'adds a PostgreSQL user to a server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'disables a PostgreSQL account on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'enables a PostgreSQL account on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_postgres_server_user_password_set',
  'postgresql',
  'postgres_server_users',
  'determines if a PostgreSQL account password is set',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'removes a PostgreSQL user from a server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_postgres_server_user_password',
  'postgresql',
  'postgres_server_users',
  'sets the password for a PostgreSQL user on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_postgres_server_name',
  'postgresql',
  'postgres_servers',
  'checks the format of a PostgreSQL server name',
  '<i>name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_postgres_server_name_available',
  'postgresql',
  'postgres_servers',
  'determines if a PostgreSQL server name is available',
  '<i>server_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_postgresql',
  'postgresql',
  'postgres_servers',
  'restarts the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_postgresql',
  'postgresql',
  'postgres_servers',
  'starts the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_postgresql',
  'postgresql',
  'postgres_servers',
  'stops the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_postgres_server_rebuild',
  'postgresql',
  'postgres_servers',
  'waits for any pending or current database server config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_postgres_user',
  'postgresql',
  'postgres_users',
  'adds a PostgreSQL user to the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'are_postgres_user_passwords_set',
  'postgresql',
  'postgres_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a PostgreSQL account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_postgres_password',
  'postgresql',
  'postgres_users',
  'checks the format of a password for a PostgreSQL user',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_postgres_username',
  'postgresql',
  'postgres_users',
  'checks the format of a PostgreSQL username',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_postgres_user',
  'postgresql',
  'postgres_users',
  'disables a PostgreSQL account on all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_postgres_user',
  'postgresql',
  'postgres_users',
  'enables a PostgreSQL account on all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_postgres_user',
  'postgresql',
  'postgres_users',
  'removes a PostgreSQL user from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_postgres_user_password',
  'postgresql',
  'postgres_users',
  'sets the password for a PostgreSQL user on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_postgres_user_rebuild',
  'postgresql',
  'postgres_users',
  'waits for any pending or current database user config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_ssl_certificate',
  'tls',
  'ssl_certificates',
  'checks an SSL certificate status',
  '<i>ao_server</i> <i>key_file_or_certbot_name</i>',
  '1.81.10',
  null
);
select aosh.add_command(
  'desc',
  'schema',
  'schema_tables',
  'describes the structure of a table',
  '<i>table_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'describe',
  'schema',
  'schema_tables',
  'describes the structure of a table',
  '<i>table_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'select',
  'schema',
  'schema_tables',
  'selects rows and columns from a table',
  '{<b>*</b>|<i>column[::type][.join][, column[::type][.join]]</i>|<b>count(*)</b>} <b>from</b> <i>table_name</i> [order by <i>column[::type][.join][, column[::type][.join]]]</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'show',
  'schema',
  'schema_tables',
  'shows information about tables',
  '<b>tables</b>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_sendmail_smtp_stat',
  'email',
  'sendmail_smtp_stats',
  'adds to the daily SMTP statistics',
  '<i>package</i> <i>date</i> <i>ao_server</i> <i>in_count</i> <i>in_bandwidth</i> <i>out_count</i> <i>out_bandwidth</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_backup_server',
  'servers',
  'adds a new backup server',
  '<i>hostname</i> <i>farm</i> <i>owner</i> <i>description</i> <i>architecture</i> <i>backup_hour</i> <i>os_type</i> <i>os_version</i> <i>username</i> <i>password</i> <i>contact_phone</i> <i>contact_email</i>',
  '1.0a102',
  '1.0a107'
);
select aosh.add_command(
  'add_backup_server',
  'servers',
  'adds a new backup server',
  '<i>hostname</i> <i>farm</i> <i>owner</i> <i>description</i> <i>backup_hour</i> <i>os_type</i> <i>os_version</i> <i>architecture</i> <i>username</i> <i>password</i> <i>contact_phone</i> <i>contact_email</i>',
  '1.0a108',
  null
);
select aosh.add_command(
  'add_spam_email_message',
  'email',
  'spam_email_messages',
  'adds a spam email message to the database',
  '<i>email_relay</i> <i>message</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'add_ticket',
  'ticket',
  'tickets',
  'adds a new ticket',
  '<i>package</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>}',
  '1.0a100',
  '1.0a124'
);
select aosh.add_command(
  'add_ticket',
  'ticket',
  'tickets',
  'adds a new ticket',
  '<i>package</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>} {""|<i>assigned_to</i>} {""|<i>contact_emails</i>} {""|<i>contact_phone_numbers</i>}',
  '1.0a125',
  '1.0a125'
);
select aosh.add_command(
  'add_ticket',
  'ticket',
  'tickets',
  'adds a new ticket',
  '<i>{""|accounting}</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>} {""|<i>assigned_to</i>} {""|<i>contact_emails</i>} {""|<i>contact_phone_numbers</i>}',
  '1.0a126',
  '1.43'
);
select aosh.add_command(
  'add_ticket_work',
  'ticket',
  'tickets',
  'adds work information to a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'bounce_ticket',
  'ticket',
  'tickets',
  'bounces a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_admin_priority',
  'ticket',
  'tickets',
  'changes the administrative priority of a ticket',
  '<i>ticket_id</i> <i>priority</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_client_priority',
  'ticket',
  'tickets',
  'changes the client priority of a ticket',
  '<i>ticket_id</i> <i>priority</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_deadline',
  'ticket',
  'tickets',
  'changes the deadline for a ticket',
  '<i>ticket_id</i> {""|<i>deadline</i>} <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_technology',
  'ticket',
  'tickets',
  'changes the technology associated with a ticket',
  '<i>ticket_id</i> {""|<i>technology</i>} <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_type',
  'ticket',
  'tickets',
  'changes the type of a ticket',
  '<i>ticket_id</i> <i>type</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'complete_ticket',
  'ticket',
  'tickets',
  'completes a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'hold_ticket',
  'ticket',
  'tickets',
  'places a ticket in the hold state',
  '<i>ticket_id</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'kill_ticket',
  'ticket',
  'tickets',
  'kills a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'reactivate_ticket',
  'ticket',
  'tickets',
  'reactivates a ticket that is on hold',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'add_transaction',
  'billing',
  'transactions',
  'adds a new transaction to a business account',
  '<i>business</i> <i>source_business</i> <i>business_administrator</i> <i>type</i> <i>description</i> <i>quantity</i> <i>rate</i> {""|<i>payment_type</i>} {""|<i>payment_info</i>} {<b>Y</b>|<b>N</b>|<b>W</b>}',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'add_transaction',
  'billing',
  'transactions',
  'adds a new transaction to a business account',
  '<i>business</i> <i>source_business</i> <i>business_administrator</i> <i>type</i> <i>description</i> <i>quantity</i> <i>rate</i> {""|<i>payment_type</i>} {""|<i>payment_info</i>} {""|<i>processor</i>} {<b>Y</b>|<b>N</b>|<b>W</b>}',
  '1.29',
  null
);
select aosh.add_command(
  'approve_transaction',
  'billing',
  'transactions',
  'flags a transaction as approved',
  '<i>transaction_id</i> <i>payment_type</i> <i>payment_info</i> <i>merchant_account</i> <i>apr_num</i>',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'decline_transaction',
  'billing',
  'transactions',
  'flags a transaction as declined',
  '<i>transaction_id</i> <i>payment_type</i> <i>payment_info</i> <i>merchant_account</i>',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'add_username',
  'usernames',
  'adds a new username',
  '<i>package</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'are_username_passwords_set',
  'usernames',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a username are set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_username',
  'usernames',
  'checks the format of a username',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_username_password',
  'usernames',
  'checks the format of a password for a Username',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_username',
  'usernames',
  'disables a username and accounts using it, except its business administrator',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_username',
  'usernames',
  'enables a username and accounts using it',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_username_available',
  'usernames',
  'checks the availability of a username',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_username',
  'usernames',
  'removes a username from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_username_password',
  'usernames',
  'sets the password for a Username on all services',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'verify_virtual_disk',
  'virtual_disks',
  'begins a verification of the redundancy of the virtual disk',
  '<i>virtual_server</i> <i>device</i>',
  '1.71',
  null
);
select aosh.add_command(
  'create_virtual_server',
  'virtual_servers',
  'calls "xl create" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'reboot_virtual_server',
  'virtual_servers',
  'calls "xl reboot" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'shutdown_virtual_server',
  'virtual_servers',
  'calls "xl shutdown" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'destroy_virtual_server',
  'virtual_servers',
  'calls "xl destroy" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'pause_virtual_server',
  'virtual_servers',
  'calls "xl pause" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'unpause_virtual_server',
  'virtual_servers',
  'calls "xl unpause" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'get_primary_physical_server',
  'virtual_servers',
  'gets the physical server that is currently the primary node for this virtual server',
  '<i>virtual_server</i>',
  '1.73',
  null
);
select aosh.add_command(
  'get_secondary_physical_server',
  'virtual_servers',
  'gets the physical server that is currently the secondary node for this virtual server',
  '<i>virtual_server</i>',
  '1.73',
  null
);
select aosh.add_command(
  'get_virtual_server_status',
  'virtual_servers',
  'calls "xl list" to get the current state on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
