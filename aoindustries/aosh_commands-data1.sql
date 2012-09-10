begin;
insert into aosh_commands values(
  'clear',
  null,
  'clears the screen',
  '',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'echo',
  null,
  'echoes the parameters to standard output',
  '[<i>params</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'exit',
  null,
  'exits the shell',
  '',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'invalidate',
  null,
  'globally invalidates a table',
  '<i>table_name</i> [<i>server</i>]',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'invalidate',
  null,
  'globally invalidates a table',
  '<i>table_name</i> [<i>ao_servers.hostname</i> or <i>servers.package.name</i>/<i>servers.name</i> or <i>servers.pkey</i>]',
  '1.31',
  null
);
insert into aosh_commands values(
  'jobs',
  null,
  'lists all of the background processes',
  '',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'ping',
  null,
  'times the communication with the server',
  '',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'repeat',
  null,
  'repeatedly executes a command',
  '<i>count</i> <i>command</i> [<i>params</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'su',
  null,
  'switches to a different user',
  '<i>username</i> [<i>command</i> [<i>params</i>]]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'time',
  null,
  'times a command',
  '<i>command</i> [<i>params</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'whoami',
  null,
  'displays who is logged in',
  '',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_mrtg_file',
  'ao_servers',
  'gets a file from the MRTG report directory',
  '<i>ao_server</i> <i>filename</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_ups_status',
  'ao_servers',
  'gets the status of the UPS powering this server',
  '<i>ao_server</i>',
  '1.63',
  null
);
insert into aosh_commands values(
  'restart_apache',
  'ao_servers',
  'restarts the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'restart_cron',
  'ao_servers',
  'restarts the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'restart_interbase',
  'ao_servers',
  'restarts the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'restart_mysql',
  'ao_servers',
  'restarts the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'restart_xfs',
  'ao_servers',
  'restarts the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'restart_xvfb',
  'ao_servers',
  'restarts the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'start_apache',
  'ao_servers',
  'starts the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'start_cron',
  'ao_servers',
  'starts the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'start_interbase',
  'ao_servers',
  'starts the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'start_mysql',
  'ao_servers',
  'starts the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'start_xfs',
  'ao_servers',
  'starts the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'start_xvfb',
  'ao_servers',
  'starts the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'stop_apache',
  'ao_servers',
  'stops the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'stop_cron',
  'ao_servers',
  'stops the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'stop_interbase',
  'ao_servers',
  'stops the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'stop_mysql',
  'ao_servers',
  'stops the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'stop_xfs',
  'ao_servers',
  'stops the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'stop_xvfb',
  'ao_servers',
  'stops the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'help',
  'aosh_commands',
  'displays the help screen',
  '[<b>syntax</b>|<i>command</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  '?',
  'aosh_commands',
  'displays the help screen',
  '[<b>syntax</b>|<i>command</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_backup_data',
  'backup_data',
  'gets the contents of a backup data set',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_unused_backup_data',
  'backup_data',
  'removes backup data that if no longer referenced',
  '<i>pkey</i> [...]',
  '1.0a100',
  '1.0a108'
);
insert into aosh_commands values(
  'get_backup_partition_total_size',
  'backup_partitions',
  'gets the total size of a backup partition',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_backup_partition_used_size',
  'backup_partitions',
  'gets the disk space used on a backup partition',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_blackhole_email_address',
  'blackhole_email_addresses',
  'stops emails from being discarded sent to /dev/null',
  '<i>address</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_business_administrator',
  'business_administrators',
  'adds a business administrator to the list of people who may maintain the account',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>}',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'add_business_administrator',
  'business_administrators',
  'adds a business administrator to the list of people who may maintain the account',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>} <i>enable_email_support</i>',
  '1.44',
  null
);
insert into aosh_commands values(
  'check_business_administrator_password',
  'business_administrators',
  'checks the format of a password for a business administrator',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_business_administrator_username',
  'business_administrators',
  'checks the format of a business administrator username',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'crypt',
  'business_administrators',
  'encrypts a password as used in Apache password lists',
  '<i>password</i> [<i>salt</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_business_administrator',
  'business_administrators',
  'disables a business administrator account',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_business_administrator',
  'business_administrators',
  'enables a business administrator account',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_business_administrator_password_set',
  'business_administrators',
  'determines if a business administrator password is set',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_business_administrator',
  'business_administrators',
  'removes the administrative access for a user',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_business_administrator_password',
  'business_administrators',
  'sets the password used for administrative access',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_business_administrator_profile',
  'business_administrators',
  'sets the profile associated with a business administrator',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_business_profile',
  'business_profiles',
  'adds a new business profile to a business',
  '<i>business</i> <i>name</i> <i>is_private</i> <i>phone</i> {""|<i>fax</i>} <i>address1</i> {""|<i>address2</i>} <i>city</i> {""|<i>state</i>} <i>country</i> {""|<i>zip</i>} <i>send_invoice</i> <i>billing_contact</i> <i>billing_email</i> <i>technical_contact</i> <i>technical_email</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_business_server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  '1.0a101'
);
insert into aosh_commands values(
  'add_business_server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i> <i>can_configure_backup</i>',
  '1.0a102',
  '1.30'
);
insert into aosh_commands values(
  'add_business_server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i>',
  '1.31',
  null
);
insert into aosh_commands values(
  'remove_business_server',
  'business_servers',
  'removes a business\' access to a server',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_default_business_server',
  'business_servers',
  'sets the default server for a business',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_business',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_businesses</i> <i>bill_parent</i>',
  '1.0a100',
  '1.0a101'
);
insert into aosh_commands values(
  'add_business',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_backup_server</i> <i>can_add_businesses</i> <i>bill_parent</i>',
  '1.0a102',
  '1.0a102'
);
insert into aosh_commands values(
  'add_business',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_backup_server</i> <i>can_add_businesses</i> <i>can_see_prices</i> <i>bill_parent</i>',
  '1.0a103',
  null
);
insert into aosh_commands values(
  'cancel_business',
  'businesses',
  'cancels a business',
  '<i>accounting_code</i> <i>cancel_reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_accounting',
  'businesses',
  'checks the format of an accounting code',
  '<i>accounting_code</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_business',
  'businesses',
  'disables a business and everything in it, except its business administrators',
  '<i>accounting</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_business',
  'businesses',
  'enables a business and everything in it',
  '<i>accounting</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'generate_accounting',
  'businesses',
  'generates a unique accounting code based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_root_business',
  'businesses',
  'gets the name of the root business in the business tree',
  '',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_accounting_available',
  'businesses',
  'checks the availability of an accounting code',
  '<i>accounting_code</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'move_business',
  'businesses',
  'moves all of the resources for one business from one server to another server',
  '<i>business</i> <i>from_ao_server</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_business_accounting',
  'businesses',
  'changes the accounting code that uniquely identifies a business',
  '<i>old_accounting</i> <i>new_accounting</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_credit_card',
  'credit_cards',
  'adds a credit card to a business',
  '<i>business</i> <i>enc_card_number</i> <i>card_info</i> <i>enc_expiration_month</i> <i>enc_expiration_year</i> <i>enc_cardholder_name</i> <i>enc_street_address</i> <i>enc_city</i> {""|<i>enc_state</i>} {""|<i>enc_zip</i>} <i>use_monthly</i> {""|<i>description</i>}',
  '1.0a100',
  '1.28'
);
insert into aosh_commands values(
  'decline_credit_card',
  'credit_cards',
  'declines and disables a credit card',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_credit_card',
  'credit_cards',
  'removes a credit card from a business',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_cvs_repository',
  'cvs_repositories',
  'adds a CVS repository to a server',
  '<i>ao_server</i> <i>path</i> <i>username</i> <i>group</i> <i>mode</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_cvs_repositories',
  'cvs_repositories',
  'disables a CVS repository',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_cvs_repositories',
  'cvs_repositories',
  'enables a CVS repository',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_cvs_repository',
  'cvs_repositories',
  'removes a CVS repository from a server',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_cvs_repository_backup_retention',
  'cvs_repositories',
  'sets the backup retention for a CVS repository',
  '<i>ao_server</i> <i>path</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_cvs_repository_mode',
  'cvs_repositories',
  'sets the directory permissions of a CVS repository',
  '<i>ao_server</i> <i>path</i> <i>mode</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'start_distro',
  'distro_files',
  'starts the distribution verification on a server',
  '<i>ao_server</i> <i>include_user</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_dns_record',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>mx_priority</i>} {<i>hostname</i>|<i>ip_address</i>}',
  '1.0a100',
  '1.0a126'
);
insert into aosh_commands values(
  'add_dns_record',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>mx_priority</i>} {<i>hostname</i>|<i>ip_address</i>} {""|<i>ttl</i>}',
  '1.0a127',
  null
);
insert into aosh_commands values(
  'remove_dns_record',
  'dns_records',
  'removes a record from a name server zone',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_dns_zone',
  'dns_zones',
  'adds a zone to the name servers',
  '<i>package</i> <i>zone</i> <i>ip_address</i>',
  '1.0a100',
  '1.0a126'
);
insert into aosh_commands values(
  'add_dns_zone',
  'dns_zones',
  'adds a zone to the name servers',
  '<i>package</i> <i>zone</i> <i>ip_address</i> <i>ttl</i>',
  '1.0a127',
  null
);
insert into aosh_commands values(
  'set_dns_zone_ttl',
  'dns_zones',
  'sets the default TTL value for a name server zone',
  '<i>zone</i> <i>ttl</i>',
  '1.0a127',
  null
);
insert into aosh_commands values(
  'check_dns_zone',
  'dns_zones',
  'checks the format of a zone name',
  '<i>zone</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_dns_zone_available',
  'dns_zones',
  'checks the availability of a DNS zone',
  '<i>zone</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'print_zone_file',
  'dns_zones',
  'generates a zone file',
  '<i>zone</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_dns_zone',
  'dns_zones',
  'removes a zone from the name servers',
  '<i>zone</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_email_address',
  'email_addresses',
  'checks the format of an email address',
  '<i>address</i> [<i>...</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_email_address',
  'email_addresses',
  'removes an email address and all associated resources',
  '<i>address</i> <i>ao_server> [<i>...</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_email_domain',
  'email_domains',
  'adds a new email domain',
  '<i>domain</i> <i>ao_server</i> <i>package</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_email_domain',
  'email_domains',
  'checks the format of an email domain',
  '<i>domain</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_email_domain_available',
  'email_domains',
  'checks the availability of an email domain',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_email_domain',
  'email_domains',
  'removes an email domain and all associated email addresses',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_email_forwarding',
  'email_forwarding',
  'attaches a forwarding address to an email address',
  '<i>from_address</i> <i>ao_server</i> <i>to_address</i> [<i>from_address</i> <i>ao_server</i> <i>to_address</i>]...',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_email_forwarding',
  'email_forwarding',
  'checks the format of a the destination for email forwarding',
  '<i>from_address</i> <i>to_address</i> [<i>from_address</i> <i>to_address</i>]...',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_email_forwarding',
  'email_forwarding',
  'detaches a forwarding address from an email address',
  '<i>from_address</i> <i>ao_server</i> s<i>to_address</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_email_list_address',
  'email_list_addresses',
  'attaches an email address to an email list',
  '<i>address</i> <i>path</i> <i>ao_server</i> [<i>address</i> <i>path</i> <i>ao_server</i>]...',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_email_list_address',
  'email_list_addresses',
  'detaches an email address from an email list',
  '<i>address</i> <i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_email_list',
  'email_lists',
  'adds a new email list',
  '<i>ao_server</i> <i>path</i> <i>username</i> <i>group</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_email_list_path',
  'email_lists',
  'checks the format of an email list path',
  '<i>path</i> [<i>...</i>]',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_email_list',
  'email_lists',
  'disables an email list',
  '<i>path</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_email_list',
  'email_lists',
  'enables an email list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_email_list',
  'email_lists',
  'gets the list of addresses for a list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_email_list',
  'email_lists',
  'removes an email list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_email_list',
  'email_lists',
  'sets the list of addresses for a list',
  '<i>path</i> <i>ao_server</i> <i>list_contents</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_email_list_backup_retention',
  'email_lists',
  'sets the backup retention for a list',
  '<i>path</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_email_pipe_address',
  'email_pipe_addresses',
  'attaches an email address to an email pipe',
  '<i>address</i> <i>pipe_pkey</i> [<i>address</i> <i>pipe_pkey</i>]...',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_email_pipe_address',
  'email_pipe_addresses',
  'detaches an email address from an email pipe',
  '<i>address</i> <i>pipe_pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_email_pipe',
  'email_pipes',
  'adds a new email pipe',
  '<i>ao_server</i> <i>path</i> <i>package</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_email_pipe',
  'email_pipes',
  'disables an email pipe',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_email_pipe',
  'email_pipes',
  'enables an email pipe',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_email_pipe',
  'email_pipes',
  'removes an email pipe',
  '<i>pipe_pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_email_smtp_relay',
  'email_smtp_relays',
  'adds a SMTP relay rule',
  '<i>package</i> {""|<i>ao_server</i>} <i>host</i> <i>type</i> {""|<i>duration</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_email_smtp_relay',
  'email_smtp_relays',
  'disables a SMTP access rule',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_email_smtp_relay',
  'email_smtp_relays',
  'enables a SMTP access rule',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'refresh_email_smtp_relay',
  'email_smtp_relays',
  'refreshes a SMTP access rule',
  '<i>pkey</i> {""|<i>min_duration</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_email_smtp_relay',
  'email_smtp_relays',
  'removes a SMTP access rule',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_file_backup_device',
  'file_backup_devices',
  'creates a new FileBackupDevice',
  '<i>device</i> <i>can_backup</i> <i>description</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'get_file_backup',
  'file_backups',
  'gets the contents of a file backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_file_backup',
  'file_backups',
  'removes a backup copy of a file from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_file_backup_setting',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>server</i> <i>path</i> <i>package</i> <i>backup_level</i> <i>backup_retention</i> <i>recurse</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_file_backup_setting',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i>',
  '1.31',
  '1.61'
);
insert into aosh_commands values(
  'add_file_backup_setting',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i> <i>required</i>',
  '1.62',
  null
);
insert into aosh_commands values(
  'remove_file_backup_setting',
  'file_backup_settings',
  'removes a FileBackupSetting',
  '<i>server</i> <i>path</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_file_backup_setting',
  'file_backup_settings',
  'removes a FileBackupSetting',
  '<i>replication</i> <i>path</i>',
  '1.31',
  null
);
insert into aosh_commands values(
  'set_file_backup_setting',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>server</i> <i>path</i> <i>package</i> <i>backup_level</i> <i>backup_retention</i> <i>recurse</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_file_backup_setting',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i>',
  '1.31',
  '1.61'
);
insert into aosh_commands values(
  'set_file_backup_setting',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i> <i>required</i>',
  '1.62',
  null
);
insert into aosh_commands values(
  'add_ftp_guest_user',
  'ftp_guest_users',
  'adds a new FTP guest user',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_ftp_guest_user',
  'ftp_guest_users',
  'removes a FTP guest user',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_httpd_jboss_site',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'adds a new Multi-Site Tomcat JVM to a server',
  '<i>tomcat_name</i> <i>ao_server</i> <i>tomcat_version</i> <i>linux_server_account</i> <i>linux_server_group</i> <i>is_secure</i> <i>is_overflow</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_shared_tomcat_name',
  'httpd_shared_tomcats',
  'checks the format of a Multi-Site Tomcat JVM name',
  '<i>shared_tomcat_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'disables a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'enables a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'generate_shared_tomcat_name',
  'httpd_shared_tomcats',
  'generates a unique Multi-Site Tomcat JVM name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_shared_tomcat_name_available',
  'httpd_shared_tomcats',
  'determines if a name may be used for a Multi-Site Tomcat JVM',
  '<i>name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_httpd_shared_tomcat',
  'httpd_shared_tomcats',
  'removes a multi-site Tomcat JVM from the servers',
  '<i>name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_httpd_shared_tomcat_config_backup_retention',
  'httpd_shared_tomcats',
  'sets the config file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_httpd_shared_tomcat_file_backup_retention',
  'httpd_shared_tomcats',
  'sets the file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_httpd_shared_tomcat_is_manual',
  'httpd_shared_tomcats',
  'sets the is_manual flag for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>is_manual</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_httpd_shared_tomcat_log_backup_retention',
  'httpd_shared_tomcats',
  'sets the log file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'disable_httpd_site_bind',
  'httpd_site_binds',
  'disables one network port of a web site',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_httpd_site_bind',
  'httpd_site_binds',
  'enables one network port of a web site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_httpd_site_bind_is_manual',
  'httpd_site_binds',
  'sets the is_manual flag for one network port of a web site',
  '<i>pkey</i> <i>is_manual</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_httpd_site_bind_redirect_to_primary_hostname',
  'httpd_site_binds',
  'sets the redirect_to_primary_hostname flag for one network port of a web site',
  '<i>pkey</i> <i>redirect_to_primary_hostname</i>',
  '1.19',
  null
);
insert into aosh_commands values(
  'add_httpd_site_url',
  'httpd_site_urls',
  'adds a hostname to a web site',
  '<i>httpd_site_bind_pkey</i> <i>hostname</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_httpd_site_url',
  'httpd_site_urls',
  'removes a hostname from a web site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_primary_httpd_site_url',
  'httpd_site_urls',
  'sets the primary hostname for one specific IP address and port',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_site_name',
  'httpd_sites',
  'checks the format of a site name',
  '<i>site_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_httpd_site',
  'httpd_sites',
  'disables a web site, including its Java virtual machine and all network ports',
  '<i>site_name</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_httpd_site',
  'httpd_sites',
  'enables a web site, including its Java virtual machine and all network ports',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'generate_site_name',
  'httpd_sites',
  'generates a unique site name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_awstats_file',
  'httpd_sites',
  'gets a file from the AWStats report',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> {""|<i>query_string</i>}',
  '1.0a128',
  null
);
insert into aosh_commands values(
  'initialize_httpd_site_passwd_file',
  'httpd_sites',
  'creates the default conf/passwd file',
  '<i>site_name</i> <i>ao_server</i> <i>username</i> <i>password</i>',
  '1.0a100',
  '1.0a128'
);
insert into aosh_commands values(
  'is_site_name_available',
  'httpd_sites',
  'determines if a site name is available',
  '<i>site_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_httpd_site',
  'httpd_sites',
  'removes a web site from the servers',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_httpd_site_config_backup_retention',
  'httpd_sites',
  'sets the config file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_httpd_site_file_backup_retention',
  'httpd_sites',
  'sets the file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_httpd_site_ftp_backup_retention',
  'httpd_sites',
  'sets the ftp file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_httpd_site_is_manual',
  'httpd_sites',
  'sets the is_manual flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>is_manual</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_httpd_site_log_backup_retention',
  'httpd_sites',
  'sets the log file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_httpd_site_server_admin',
  'httpd_sites',
  'sets the administrative email address for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>email_address</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'wait_for_httpd_site_rebuild',
  'httpd_sites',
  'waits for any pending or processing changes to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_httpd_tomcat_context',
  'httpd_tomcat_contexts',
  'adds a context (webapp) to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_httpd_tomcat_context',
  'httpd_tomcat_contexts',
  'removes a context (webapp) from a Tomcat site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_httpd_tomcat_data_source',
  'httpd_tomcat_data_sources',
  'adds a data source to a Tomcat context (webapp)',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>name</i> <i>driver_class_name</i> <i>url</i> <i>username</i> <i>password</i> <i>max_active</i> <i>max_idle</i> <i>max_wait</i> {""|<i>validation_query</i>}',
  '1.5',
  null
);
insert into aosh_commands values(
  'remove_httpd_tomcat_data_source',
  'httpd_tomcat_data_sources',
  'removes a data source from a Tomcat context (webapp)',
  '<i>pkey</i>',
  '1.5',
  null
);
insert into aosh_commands values(
  'update_httpd_tomcat_data_source',
  'httpd_tomcat_data_sources',
  'updates a Tomcat context (webapp) data source',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>old_name</i> <i>new_name</i> <i>driver_class_name</i> <i>url</i> <i>username</i> <i>password</i> <i>max_active</i> <i>max_idle</i> <i>max_wait</i> {""|<i>validation_query</i>}',
  '1.5',
  null
);
insert into aosh_commands values(
  'add_httpd_tomcat_parameter',
  'httpd_tomcat_parameters',
  'adds a parameter to a Tomcat context (webapp)',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>name</i> <i>value</i> <i>override</i> {""|<i>description</i>}',
  '1.5',
  null
);
insert into aosh_commands values(
  'remove_httpd_tomcat_parameter',
  'httpd_tomcat_parameters',
  'removes a parameter from a Tomcat context (webapp)',
  '<i>pkey</i>',
  '1.5',
  null
);
insert into aosh_commands values(
  'update_httpd_tomcat_parameter',
  'httpd_tomcat_parameters',
  'updates a Tomcat context (webapp) parameter',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>old_name</i> <i>new_name</i> <i>value</i> <i>override</i> {""|<i>description</i>}',
  '1.5',
  null
);
insert into aosh_commands values(
  'set_httpd_tomcat_context_attributes',
  'httpd_tomcat_contexts',
  'sets the attributes for a context (webapp) on a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>old_path</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>new_path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'start_jvm',
  'httpd_tomcat_sites',
  'starts the Java VM',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'stop_jvm',
  'httpd_tomcat_sites',
  'stops the Java VM',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_httpd_tomcat_shared_site',
  'httpd_tomcat_shared_sites',
  'creates a new web site space running a shared Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} {""|<i>shared_tomcat_name</i>} {""|<i>tomcat_version</i>} <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_httpd_tomcat_std_site',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_incoming_payment',
  'incoming_payments',
  'attaches payment data to a transaction',
  '<i>transaction_id</i> <i>enc_cardholder_name</i> <i>enc_card_number</i> <i>enc_expiration_month</i> <i>enc_expiration_year</i>',
  '1.0a100',
  '1.28'
);
insert into aosh_commands values(
  'remove_incoming_payment',
  'incoming_payments',
  'removes payment data from a transaction',
  '<i>transaction_id</i>',
  '1.0a100',
  '1.28'
);
insert into aosh_commands values(
  'get_interbase_backup',
  'interbase_backups',
  'retrieves the contents of an InterBase backup from a backup server',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_interbase_backup',
  'interbase_backups',
  'removes the contents of an InterBase backup from the backup servers',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_interbase_database',
  'interbase_databases',
  'creates a new InterBase database',
  '<i>ao_server</i> <i>db_group</i> <i>name</i> <i>datdba</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'backup_interbase_database',
  'interbase_databases',
  'dumps the contents of a database onto a backup server',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'check_interbase_database_name',
  'interbase_databases',
  'checks the validity for an InterBase database name',
  '<i>name</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'dump_interbase_database',
  'interbase_databases',
  'dumps the contents of an InterBase database',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'generate_interbase_database_name',
  'interbase_databases',
  'generates a per-server and per-group unique InterBase database name',
  '<i>ao_server</i> <i>db_group</i> <i>template_base</i> <i>template_added</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'is_interbase_database_name_available',
  'interbase_databases',
  'checks the availability of an InterBase database name',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_interbase_database',
  'interbase_databases',
  'removes an InterBase database from the system',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_interbase_db_group',
  'interbase_db_groups',
  'adds an InterBase database group to the system',
  '<i>ao_server</i> <i>db_group</i> <i>linux_group</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'check_interbase_db_group_name',
  'interbase_db_groups',
  'checks for format of an InterBase database group name',
  '<i>name</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'generate_interbase_db_group_name',
  'interbase_db_groups',
  'generates a per-server unique InterBase database group name',
  '<i>ao_server</i> <i>template_base</i> <i>template_added</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'is_interbase_db_group_name_available',
  'interbase_db_groups',
  'determines if an InterBase database group name is available',
  '<i>ao_server</i> <i>db_group</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_interbase_db_group',
  'interbase_db_groups',
  'removes an InterBase database group from the system',
  '<i>ao_server</i> <i>db_group</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_interbase_server_user',
  'interbase_server_users',
  'grants an InterBase account access to a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'disable_interbase_server_user',
  'interbase_server_users',
  'disables an InterBase account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'enable_interbase_server_user',
  'interbase_server_users',
  'enables an InterBase account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'is_interbase_server_user_password_set',
  'interbase_server_users',
  'determines if an InterBase account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_interbase_server_user',
  'interbase_server_users',
  'revokes an InterBase account\'s access to a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_interbase_server_user_password',
  'interbase_server_users',
  'sets the password for an InterBase accounts access to one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_interbase_user',
  'interbase_users',
  'adds an InterBase user to the system',
  '<i>username</i> {""|<i>first_name</i>} {""|<i>middle_name</i>} {""|<i>last_name</i>}',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'are_interbase_user_passwords_set',
  'interbase_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for an InterBase account are set',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'check_interbase_password',
  'interbase_users',
  'checks the strength of a password that will be used for an InterBase account',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'check_interbase_username',
  'interbase_users',
  'determines if a username may be used for an InterBase account',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'disable_interbase_user',
  'interbase_users',
  'disables an InterBase account, including its access to all database servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'enable_interbase_user',
  'interbase_users',
  'enables an InterBase account, including its access to all database servers',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_interbase_user',
  'interbase_users',
  'removes an InterBase user from the system',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_interbase_user_password',
  'interbase_users',
  'sets the password used to access an InterBase user',
  '<i>username</i> {""|<i>password</i>}',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'wait_for_interbase_rebuild',
  'interbase_users',
  'waits for any pending or processing InterBase server updates to complete',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'check_ip_address',
  'ip_addresses',
  'checks the format of an IP address',
  '<i>ip_address</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_ip_address_used',
  'ip_addresses',
  'determines if an IP address is currently in use',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i>',
  '1.0a100',
  '1.32'
);
insert into aosh_commands values(
  'is_ip_address_used',
  'ip_addresses',
  'determines if an IP address is currently in use',
  '<i>ip_address</i> <i>server</i> <i>net_device</i>',
  '1.33',
  null
);
insert into aosh_commands values(
  'move_ip_address',
  'ip_addresses',
  'moves an IP address to a new server',
  '<i>ip_address</i> <i>from_server</i> <i>from_net_device</i> <i>to_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_ip_address_dhcp_address',
  'ip_addresses',
  'sets the new IP address for a DHCP-enabled device',
  '<i>pkey</i> <i>ip_address</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_ip_address_hostname',
  'ip_addresses',
  'sets the hostname associated with an IP address',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i> <i>hostname</i>',
  '1.0a100',
  '1.32'
);
insert into aosh_commands values(
  'set_ip_address_hostname',
  'ip_addresses',
  'sets the hostname associated with an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>hostname</i>',
  '1.33',
  null
);
insert into aosh_commands values(
  'set_ip_address_package',
  'ip_addresses',
  'sets the package ownership of an IP address',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i> <i>package</i>',
  '1.0a100',
  '1.32'
);
insert into aosh_commands values(
  'set_ip_address_package',
  'ip_addresses',
  'sets the package ownership of an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>package</i>',
  '1.33',
  null
);
insert into aosh_commands values(
  'add_ip_reputation',
  'ip_reputation_sets',
  'adds reputation for a host and its network',
  '<i>identifier</i> <i>ip_address</i> {<b>uncertain</b>|<b>definite</b>} {<b>good</b>|<b>bad</b>} <i>score</i>',
  '1.65',
  null
);
insert into aosh_commands values(
  'add_linux_acc_address',
  'linux_acc_addresses',
  'attaches an email address to a Linux account',
  '<i>address</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_linux_acc_address',
  'linux_acc_addresses',
  'detaches an email address from a Linux account',
  '<i>address</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_linux_account',
  'linux_accounts',
  'adds a new Linux account',
  '<i>username</i> <i>primary_group</i> <i>full_name</i> {""|<i>office_location</i>} {""|<i>office_phone</i>} {""|<i>home_phone</i>} <i>type</i> <i>shell</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'are_linux_account_passwords_set',
  'linux_accounts',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a Linux account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_linux_account_name',
  'linux_accounts',
  'checks the format of a Linux account full name',
  '<i>full_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_linux_account_password',
  'linux_accounts',
  'checks the format of a password for a Linux account',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_linux_account_username',
  'linux_accounts',
  'checks the format of a Linux account username',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_linux_account',
  'linux_accounts',
  'disables a Linux account and removes its access to all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_linux_account',
  'linux_accounts',
  'enables a Linux account and restores its access to all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'generate_password',
  'linux_accounts',
  'generates a random, valid password',
  '',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_linux_account',
  'linux_accounts',
  'removes a Linux account from all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_account_home_phone',
  'linux_accounts',
  'sets the home phone number for a Linux account',
  '<i>username</i> {""|<i>phone_number</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_account_name',
  'linux_accounts',
  'sets the full name for a Linux account',
  '<i>username</i> <i>full_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_account_office_location',
  'linux_accounts',
  'sets the office location for a Linux account',
  '<i>username</i> {""|<i>location</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_account_office_phone',
  'linux_accounts',
  'sets the office phone number for a Linux account',
  '<i>username</i> {""|<i>phone_number</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_account_password',
  'linux_accounts',
  'sets the password for a Linux account on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_account_shell',
  'linux_accounts',
  'sets the shell used by a Linux account',
  '<i>username</i> {""|<i>shell</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'wait_for_linux_account_rebuild',
  'linux_accounts',
  'waits for any pending or current server config rebuild to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_linux_group_account',
  'linux_group_accounts',
  'grants a Linux account access to a Linux group',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_linux_group_account',
  'linux_group_accounts',
  'revokes access of a Linux account to a Linux group',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_primary_linux_group_account',
  'linux_group_accounts',
  'sets the primary Linux group associated with a Linux account',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_linux_group',
  'linux_groups',
  'adds a new Linux group',
  '<i>group</i> <i>package</i> <i>type</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_linux_group_name',
  'linux_groups',
  'checks validity of a Linux group name',
  '<i>groupname</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_linux_group_name_available',
  'linux_groups',
  'check availability Linux group name',
  '<i>groupname</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_linux_group',
  'linux_groups',
  'removes a Linux group',
  '<i>group</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_linux_server_account',
  'linux_server_accounts',
  'grants a Linux account access to a server',
  '<i>username</i> <i>ao_server</i> {""|<i>home_directory</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'compare_linux_server_account_password',
  'linux_server_accounts',
  'compares the provided password to the password on the server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'copy_home_directory',
  'linux_server_accounts',
  'copies the contents of a home directory from one server to another',
  '<i>username</i> <i>from_ao_server</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'copy_linux_server_account_password',
  'linux_server_accounts',
  'copies the password of one Linux account to another account',
  '<i>from_username</i> <i>from_ao_server</i> <i>to_username</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_linux_server_account',
  'linux_server_accounts',
  'disables a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_linux_server_account',
  'linux_server_accounts',
  'enables a Linux account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_autoresponder_content',
  'linux_server_accounts',
  'gets the message body of an autoresponder',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_cron_table',
  'linux_server_accounts',
  'gets the contents of a user cron table',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_imap_folder_sizes',
  'linux_server_accounts',
  'gets the file sizes for IMAP folders',
  '<i>username</i> <i>ao_server</i> <i>folder_name</i> [...]',
  '1.0a120',
  null
);
insert into aosh_commands values(
  'get_inbox_attributes',
  'linux_server_accounts',
  'gets the attributes of an email inbox',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_linux_server_account_password_set',
  'linux_server_accounts',
  'determines if a Linux account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_linux_server_account_procmail_manual',
  'linux_server_accounts',
  'determines if a Linux account is in manual procmail mode',
  '<i>username</i> <i>ao_server</i>',
  '1.0a116',
  null
);
insert into aosh_commands values(
  'remove_linux_server_account',
  'linux_server_accounts',
  'removes a Linux account from a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_autoresponder',
  'linux_server_accounts',
  'configures an autoresponder',
  '<i>username</i> <i>ao_server</i> <i>from_address</i> <i>from_domain</i> <i>subject</i> <i>content</i> <i>enabled</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_cron_table',
  'linux_server_accounts',
  'sets the contents of a user cron table',
  '<i>username</i> <i>ao_server</i> <i>cron_table</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_server_account_cron_backup_retention',
  'linux_server_accounts',
  'sets the cron file backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_linux_server_account_home_backup_retention',
  'linux_server_accounts',
  'sets the home directory backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_linux_server_account_inbox_backup_retention',
  'linux_server_accounts',
  'sets the email inbox directory backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'set_linux_server_account_junk_email_retention',
  'linux_server_accounts',
  'sets the number of days emails will remain in the Junk folder',
  '<i>username</i> <i>ao_server</i> {""|<i>days</i>}',
  '1.0a120',
  null
);
insert into aosh_commands values(
  'set_linux_server_account_password',
  'linux_server_accounts',
  'sets the password for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_server_account_spamassassin_integration_mode',
  'linux_server_accounts',
  'sets the behavior of the SpamAssassin filters',
  '<i>username</i> <i>ao_server</i> <i>mode</i>',
  '1.0a120',
  null
);
insert into aosh_commands values(
  'set_linux_server_account_spamassassin_required_score',
  'linux_server_accounts',
  'sets the required score for the SpamAssassin filters',
  '<i>username</i> <i>ao_server</i> <i>required_score</i>',
  '1.0a124',
  null
);
insert into aosh_commands values(
  'set_linux_server_account_trash_email_retention',
  'linux_server_accounts',
  'sets the number of days emails will remain in the Trash folder',
  '<i>username</i> <i>ao_server</i> {""|<i>days</i>}',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_linux_server_account_use_inbox',
  'linux_server_accounts',
  'sets whether or not email will be stored in the inbox',
  '<i>username</i> <i>ao_server</i> <i>use_inbox</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_linux_server_group',
  'linux_server_groups',
  'adds a Linux group to a server',
  '<i>group</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_linux_server_group',
  'linux_server_groups',
  'removes a Linux group from a server',
  '<i>group</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_majordomo_list',
  'majordomo_lists',
  'adds a new Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_majordomo_list_name',
  'majordomo_lists',
  'checks the format of a Majordomo list name',
  '<i>list_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_majordomo_info_file',
  'majordomo_lists',
  'gets the info file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_majordomo_intro_file',
  'majordomo_lists',
  'gets the intro file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_majordomo_info_file',
  'majordomo_lists',
  'sets the info file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i> <i>file</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_majordomo_intro_file',
  'majordomo_lists',
  'sets the intro file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i> <i>file</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_majordomo_server',
  'majordomo_servers',
  'adds a new Majordomo server',
  '<i>domain</i> <i>ao_server</i> <i>linux_account</i> <i>linux_group</i> <i>version</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_majordomo_server',
  'majordomo_servers',
  'remvoes a Majordomo server',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_majordomo_server_backup_retention',
  'majordomo_servers',
  'sets the backup retention for a Majordomo server',
  '<i>domain</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'get_mysql_backup',
  'mysql_backups',
  'gets the contents of a MySQL database backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_mysql_backup',
  'mysql_backups',
  'removes a MySQL database backup from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_mysql_database',
  'mysql_databases',
  'adds a new MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>package</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'add_mysql_database',
  'mysql_databases',
  'adds a new MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>package</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'backup_mysql_database',
  'mysql_databases',
  'stores a compressed dump of a MySQL database in the backup system',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'backup_mysql_database',
  'mysql_databases',
  'stores a compressed dump of a MySQL database in the backup system',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  '1.30'
);
insert into aosh_commands values(
  'check_mysql_database_name',
  'mysql_databases',
  'checks the format of a MySQL database name',
  '<i>database_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'dump_mysql_database',
  'mysql_databases',
  'dumps the contents of a MySQL database',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'dump_mysql_database',
  'mysql_databases',
  'dumps the contents of a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'generate_mysql_database_name',
  'mysql_databases',
  'generates a unique MySQL database name',
  '<i>template_base</i> <i>template_added</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_mysql_database_name_available',
  'mysql_databases',
  'determines if a MySQL database name is available',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'is_mysql_database_name_available',
  'mysql_databases',
  'determines if a MySQL database name is available',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'remove_mysql_database',
  'mysql_databases',
  'removes a MySQL database',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'remove_mysql_database',
  'mysql_databases',
  'removes a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'set_mysql_database_backup_retention',
  'mysql_databases',
  'sets the backup retention for a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'set_mysql_database_backup_retention',
  'mysql_databases',
  'sets the backup retention for a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.4',
  '1.30'
);
insert into aosh_commands values(
  'wait_for_mysql_database_rebuild',
  'mysql_databases',
  'waits for any pending or current MySQL database config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_mysql_db_user',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i>',
  '1.0a100',
  '1.0a110'
);
insert into aosh_commands values(
  'add_mysql_db_user',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i>',
  '1.0a111',
  '1.3'
);
insert into aosh_commands values(
  'add_mysql_db_user',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i> <i>can_create_view</i> <i>can_show_view</i> <i>can_create_routine</i> <i>can_alter_routine</i> <i>can_execute</i>',
  '1.4',
  '1.53'
);
insert into aosh_commands values(
  'add_mysql_db_user',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i> <i>can_create_view</i> <i>can_show_view</i> <i>can_create_routine</i> <i>can_alter_routine</i> <i>can_execute</i> <i>can_event</i> <i>can_trigger</i>',
  '1.54',
  null
);
insert into aosh_commands values(
  'remove_mysql_db_user',
  'mysql_db_users',
  'removes a MySQL user\'s access to a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'remove_mysql_db_user',
  'mysql_db_users',
  'removes a MySQL user\'s access to a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'wait_for_mysql_db_user_rebuild',
  'mysql_db_users',
  'waits for any pending or current MySQL permission config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'wait_for_mysql_host_rebuild',
  'mysql_hosts',
  'waits for any pending or current MySQL host permission rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_mysql_server_name',
  'mysql_servers',
  'checks the format of a MySQL server name',
  '<i>name</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'is_mysql_server_name_available',
  'mysql_servers',
  'determines if a MySQL server name is available',
  '<i>database_name</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'restart_mysql',
  'mysql_servers',
  'restarts the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'start_mysql',
  'mysql_servers',
  'starts the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'stop_mysql',
  'mysql_servers',
  'stops the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'wait_for_mysql_server_rebuild',
  'mysql_servers',
  'waits for any pending or current database server config rebuilds to complete',
  '<i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'add_mysql_server_user',
  'mysql_server_users',
  'adds a MySQL user to a server',
  '<i>username</i> <i>ao_server</i> <i>host</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'add_mysql_server_user',
  'mysql_server_users',
  'adds a MySQL user to a server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>host</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'disable_mysql_server_user',
  'mysql_server_users',
  'disables a MySQL account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'disable_mysql_server_user',
  'mysql_server_users',
  'disables a MySQL account on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>reason</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'enable_mysql_server_user',
  'mysql_server_users',
  'enables a MySQL account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'enable_mysql_server_user',
  'mysql_server_users',
  'enables a MySQL account on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'is_mysql_server_user_password_set',
  'mysql_server_users',
  'determines if a MySQL account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'is_mysql_server_user_password_set',
  'mysql_server_users',
  'determines if a MySQL account password is set',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'remove_mysql_server_user',
  'mysql_server_users',
  'removes a MySQL user from a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'remove_mysql_server_user',
  'mysql_server_users',
  'removes a MySQL user from a server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'set_mysql_server_user_password',
  'mysql_server_users',
  'sets the password for a MySQL user on one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  '1.3'
);
insert into aosh_commands values(
  'set_mysql_server_user_password',
  'mysql_server_users',
  'sets the password for a MySQL user on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>password</i>',
  '1.4',
  null
);
insert into aosh_commands values(
  'add_mysql_user',
  'mysql_users',
  'adds a MySQL user to the system',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'are_mysql_user_passwords_set',
  'mysql_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a MySQL account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_mysql_password',
  'mysql_users',
  'checks the format of a password for a MySQL user',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_mysql_username',
  'mysql_users',
  'checks the format of a MySQL username',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_mysql_user',
  'mysql_users',
  'disables a MySQL account on all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_mysql_user',
  'mysql_users',
  'enables a MySQL account on all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_mysql_user',
  'mysql_users',
  'removes a MySQL user from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_mysql_user_password',
  'mysql_users',
  'sets the password for a MySQL user on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'wait_for_mysql_user_rebuild',
  'mysql_users',
  'waits for any pending or current MySQL user config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_net_bind',
  'net_binds',
  'adds a net binds to the system',
  '<i>ao_server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> {""|<i>monitoring_delay</i>} {""|<i>monitoring_parameter</i>} {""|<i>monitoring_contact</i>} {""|<i>monitoring_info</i>}',
  '1.0a100',
  '1.0a103'
);
insert into aosh_commands values(
  'add_net_bind',
  'net_binds',
  'adds a net binds to the system',
  '<i>ao_server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> <i>monitoring_enabled</i>',
  '1.0a104',
  '1.32'
);
insert into aosh_commands values(
  'add_net_bind',
  'net_binds',
  'adds a net binds to the system',
  '<i>server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> <i>monitoring_enabled</i>',
  '1.33',
  null
);
insert into aosh_commands values(
  'remove_net_bind',
  'net_binds',
  'removes a net binds from the system',
  '<i>pkey</i>',
  '1.0a104',
  null
);
insert into aosh_commands values(
  'set_net_bind_monitoring_enabled',
  'net_binds',
  'enables or disables the monitoring of this port',
  '<i>pkey</i> <i>enabled</i>',
  '1.0a105',
  null
);
insert into aosh_commands values(
  'set_net_bind_open_firewall',
  'net_binds',
  'opens or closes the firewall filters associated with this port',
  '<i>pkey</i> <i>open_firewall</i>',
  '1.0a105',
  null
);
insert into aosh_commands values(
  'add_notice_log',
  'notice_log',
  'adds a notice log entry to a business',
  '<i>business</i> <i>billing_contact</i> <i>email_address</i> <i>balance</i> <i>type</i> <i>transaction_id</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_package',
  'packages',
  'adds a new package to a business',
  '<i>package</i> <i>business</i> <i>service_level</i> <i>monthly_rate</i> {""|<i>user_limit</i>} <i>additional_user_rate</i> {""|<i>pop_limit</i>} <i>additional_pop_rate</i>',
  '1.0a100',
  '1.0a122'
);
insert into aosh_commands values(
  'add_package',
  'packages',
  'adds a new package to a business',
  '<i>package</i> <i>business</i> <i>package_definition</i>',
  '1.0a123',
  null
);
insert into aosh_commands values(
  'check_package_name',
  'packages',
  'checks the format of a package name',
  '<i>package</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_package',
  'packages',
  'disables a package and everything in it, except its business administrators',
  '<i>name</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_package',
  'packages',
  'enables a package and everything in it',
  '<i>name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'generate_package_name',
  'packages',
  'generates a unique package name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_package_name_available',
  'packages',
  'checks the availability of a package name',
  '<i>package</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'get_postgres_backup',
  'postgres_backups',
  'gets the contents of a PostgreSQL database backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'remove_postgres_backup',
  'postgres_backups',
  'removes a PostgreSQL database backup from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_postgres_database',
  'postgres_databases',
  'adds a new PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>datdba</i> <i>encoding</i>',
  '1.0a100',
  '1.26'
);
insert into aosh_commands values(
  'add_postgres_database',
  'postgres_databases',
  'adds a new PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>datdba</i> <i>encoding</i> <i>enable_postgis</i>',
  '1.27',
  null
);
insert into aosh_commands values(
  'backup_postgres_database',
  'postgres_databases',
  'stores a compressed dump of a PostgreSQL database in the backup system',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'check_postgres_database_name',
  'postgres_databases',
  'checks the format of a PostgreSQL database name',
  '<i>database_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'dump_postgres_database',
  'postgres_databases',
  'dumps the contents of a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'generate_postgres_database_name',
  'postgres_databases',
  'generates a unique PostgreSQL database name',
  '<i>template_base</i> <i>template_added</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_postgres_database_name_available',
  'postgres_databases',
  'determines if a PostgreSQL database name is available',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_postgres_database',
  'postgres_databases',
  'removes a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_postgres_database_backup_retention',
  'postgres_databases',
  'sets the backup retention for a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'wait_for_postgres_database_rebuild',
  'postgres_databases',
  'waits for any pending or current database config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_postgres_server_user',
  'postgres_server_users',
  'adds a PostgreSQL user to a server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_postgres_server_user',
  'postgres_server_users',
  'disables a PostgreSQL account on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_postgres_server_user',
  'postgres_server_users',
  'enables a PostgreSQL account on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_postgres_server_user_password_set',
  'postgres_server_users',
  'determines if a PostgreSQL account password is set',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_postgres_server_user',
  'postgres_server_users',
  'removes a PostgreSQL user from a server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_postgres_server_user_password',
  'postgres_server_users',
  'sets the password for a PostgreSQL user on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_postgres_server_name',
  'postgres_servers',
  'checks the format of a PostgreSQL server name',
  '<i>name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_postgres_server_name_available',
  'postgres_servers',
  'determines if a PostgreSQL server name is available',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'restart_postgresql',
  'postgres_servers',
  'restarts the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'start_postgresql',
  'postgres_servers',
  'starts the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'stop_postgresql',
  'postgres_servers',
  'stops the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'wait_for_postgres_server_rebuild',
  'postgres_servers',
  'waits for any pending or current database server config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_postgres_user',
  'postgres_users',
  'adds a PostgreSQL user to the system',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'are_postgres_user_passwords_set',
  'postgres_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a PostgreSQL account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_postgres_password',
  'postgres_users',
  'checks the format of a password for a PostgreSQL user',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_postgres_username',
  'postgres_users',
  'checks the format of a PostgreSQL username',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_postgres_user',
  'postgres_users',
  'disables a PostgreSQL account on all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_postgres_user',
  'postgres_users',
  'enables a PostgreSQL account on all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_postgres_user',
  'postgres_users',
  'removes a PostgreSQL user from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_postgres_user_password',
  'postgres_users',
  'sets the password for a PostgreSQL user on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'wait_for_postgres_user_rebuild',
  'postgres_users',
  'waits for any pending or current database user config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'desc',
  'schema_tables',
  'describes the structure of a table',
  '<i>table_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'describe',
  'schema_tables',
  'describes the structure of a table',
  '<i>table_name</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'select',
  'schema_tables',
  'selects rows and columns from a table',
  '{<b>*</b>|<i>column[::type][.join][, column[::type][.join]]</i>|<b>count(*)</b>} <b>from</b> <i>table_name</i> [order by <i>column[::type][.join][, column[::type][.join]]]</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'show',
  'schema_tables',
  'shows information about tables',
  '<b>tables</b>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_sendmail_smtp_stat',
  'sendmail_smtp_stats',
  'adds to the daily SMTP statistics',
  '<i>package</i> <i>date</i> <i>ao_server</i> <i>in_count</i> <i>in_bandwidth</i> <i>out_count</i> <i>out_bandwidth</i>',
  '1.0a100',
  '1.30'
);
insert into aosh_commands values(
  'add_backup_server',
  'servers',
  'adds a new backup server',
  '<i>hostname</i> <i>farm</i> <i>owner</i> <i>description</i> <i>architecture</i> <i>backup_hour</i> <i>os_type</i> <i>os_version</i> <i>username</i> <i>password</i> <i>contact_phone</i> <i>contact_email</i>',
  '1.0a102',
  '1.0a107'
);
insert into aosh_commands values(
  'add_backup_server',
  'servers',
  'adds a new backup server',
  '<i>hostname</i> <i>farm</i> <i>owner</i> <i>description</i> <i>backup_hour</i> <i>os_type</i> <i>os_version</i> <i>architecture</i> <i>username</i> <i>password</i> <i>contact_phone</i> <i>contact_email</i>',
  '1.0a108',
  null
);
insert into aosh_commands values(
  'add_spam_email_message',
  'spam_email_messages',
  'adds a spam email message to the database',
  '<i>email_relay</i> <i>message</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'add_ticket',
  'tickets',
  'adds a new ticket',
  '<i>package</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>}',
  '1.0a100',
  '1.0a124'
);
insert into aosh_commands values(
  'add_ticket',
  'tickets',
  'adds a new ticket',
  '<i>package</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>} {""|<i>assigned_to</i>} {""|<i>contact_emails</i>} {""|<i>contact_phone_numbers</i>}',
  '1.0a125',
  '1.0a125'
);
insert into aosh_commands values(
  'add_ticket',
  'tickets',
  'adds a new ticket',
  '<i>{""|accounting}</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>} {""|<i>assigned_to</i>} {""|<i>contact_emails</i>} {""|<i>contact_phone_numbers</i>}',
  '1.0a126',
  '1.43'
);
insert into aosh_commands values(
  'add_ticket_work',
  'tickets',
  'adds work information to a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'bounce_ticket',
  'tickets',
  'bounces a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'change_ticket_admin_priority',
  'tickets',
  'changes the administrative priority of a ticket',
  '<i>ticket_id</i> <i>priority</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'change_ticket_client_priority',
  'tickets',
  'changes the client priority of a ticket',
  '<i>ticket_id</i> <i>priority</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'change_ticket_deadline',
  'tickets',
  'changes the deadline for a ticket',
  '<i>ticket_id</i> {""|<i>deadline</i>} <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'change_ticket_technology',
  'tickets',
  'changes the technology associated with a ticket',
  '<i>ticket_id</i> {""|<i>technology</i>} <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'change_ticket_type',
  'tickets',
  'changes the type of a ticket',
  '<i>ticket_id</i> <i>type</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'complete_ticket',
  'tickets',
  'completes a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'hold_ticket',
  'tickets',
  'places a ticket in the hold state',
  '<i>ticket_id</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'kill_ticket',
  'tickets',
  'kills a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'reactivate_ticket',
  'tickets',
  'reactivates a ticket that is on hold',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
insert into aosh_commands values(
  'add_transaction',
  'transactions',
  'adds a new transaction to a business account',
  '<i>business</i> <i>source_business</i> <i>business_administrator</i> <i>type</i> <i>description</i> <i>quantity</i> <i>rate</i> {""|<i>payment_type</i>} {""|<i>payment_info</i>} {<b>Y</b>|<b>N</b>|<b>W</b>}',
  '1.0a100',
  '1.28'
);
insert into aosh_commands values(
  'add_transaction',
  'transactions',
  'adds a new transaction to a business account',
  '<i>business</i> <i>source_business</i> <i>business_administrator</i> <i>type</i> <i>description</i> <i>quantity</i> <i>rate</i> {""|<i>payment_type</i>} {""|<i>payment_info</i>} {""|<i>processor</i>} {<b>Y</b>|<b>N</b>|<b>W</b>}',
  '1.29',
  null
);
insert into aosh_commands values(
  'approve_transaction',
  'transactions',
  'flags a transaction as approved',
  '<i>transaction_id</i> <i>payment_type</i> <i>payment_info</i> <i>merchant_account</i> <i>apr_num</i>',
  '1.0a100',
  '1.28'
);
insert into aosh_commands values(
  'decline_transaction',
  'transactions',
  'flags a transaction as declined',
  '<i>transaction_id</i> <i>payment_type</i> <i>payment_info</i> <i>merchant_account</i>',
  '1.0a100',
  '1.28'
);
insert into aosh_commands values(
  'add_username',
  'usernames',
  'adds a new username',
  '<i>package</i> <i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'are_username_passwords_set',
  'usernames',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a username are set',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_username',
  'usernames',
  'checks the format of a username',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'check_username_password',
  'usernames',
  'checks the format of a password for a Username',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'disable_username',
  'usernames',
  'disables a username and accounts using it, except its business administrator',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'enable_username',
  'usernames',
  'enables a username and accounts using it',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'is_username_available',
  'usernames',
  'checks the availability of a username',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'remove_username',
  'usernames',
  'removes a username from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'set_username_password',
  'usernames',
  'sets the password for a Username on all services',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
insert into aosh_commands values(
  'create_virtual_server',
  'virtual_servers',
  'calls "xm create" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
insert into aosh_commands values(
  'reboot_virtual_server',
  'virtual_servers',
  'calls "xm reboot" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
insert into aosh_commands values(
  'shutdown_virtual_server',
  'virtual_servers',
  'calls "xm shutdown" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
insert into aosh_commands values(
  'destroy_virtual_server',
  'virtual_servers',
  'calls "xm destroy" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
insert into aosh_commands values(
  'pause_virtual_server',
  'virtual_servers',
  'calls "xm pause" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
insert into aosh_commands values(
  'unpause_virtual_server',
  'virtual_servers',
  'calls "xm unpause" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
insert into aosh_commands values(
  'get_virtual_server_status',
  'virtual_servers',
  'calls "xm list" to get the current state on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
commit;
