\echo majordomo_servers
select "schema".add_column('majordomo_servers', 'domain', 0, 'fkey', false, true, false, 'the pkey of the domain that is hosted', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'linux_server_account', 1, 'fkey', false, false, false, 'the pkey of linux_server_account to run as', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'linux_server_group', 2, 'fkey', false, false, false, 'the pkey of the linux_server_group to run as', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'version', 3, 'string', false, false, false, 'the version of Majordomo to use', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'majordomo_pipe_address', 4, 'fkey', false, false, false, 'the email_address to use as the majordomo', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'owner_majordomo_add', 5, 'fkey', false, false, false, 'the email_address that owns this majordomo list', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'majordomo_owner_add', 6, 'fkey', false, false, false, 'the email_address that owns this majordomo list', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'backup_level', 7, 'short', false, false, false, 'the number of backup copies to store', '1.0a100', '1.30');
select "schema".add_column('majordomo_servers', 'backup_retention', 8, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');

\echo majordomo_versions
select "schema".add_column('majordomo_versions', 'version', 0, 'string', false, true, true, 'the version number', '1.0a100', null);
select "schema".add_column('majordomo_versions', 'created', 1, 'time', false, false, true, 'the time the version was added', '1.0a100', null);

\echo master_hosts
select "schema".add_column('master_hosts', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('master_hosts', 'username', 1, 'username', false, false, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master_hosts', 'host', 2, 'ip_address', false, false, false, 'the hostname or IP address they are allowed to connect from', '1.0a100', '1.80');
select "schema".add_column('master_hosts', 'host', 3, 'hostname', false, false, false, 'the hostname or IP address they are allowed to connect from', '1.80.0', null);

\echo master_processes
select "schema".add_column('master_processes', 'process_id', 0, 'long', false, true, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'connector_id', 1, 'long', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'authenticated_user', 2, 'username', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'effective_user', 3, 'username', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'daemon_server', 4, 'fkey', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'host', 5, 'ip_address', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'protocol', 6, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'aoserv_protocol', 7, 'string', true, false, false, '', '1.0a101', null);
select "schema".add_column('master_processes', 'is_secure', 8, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'connect_time', 9, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'use_count', 10, 'long', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'total_time', 11, 'interval', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'priority', 12, 'int', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'state', 13, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'command', 14, 'string', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'state_start_time', 15, 'time', false, false, false, '', '1.0a100', null);

\echo master_server_stats
select "schema".add_column('master_server_stats', 'name', 0, 'string', false, true, false, '', '1.0a100', null);
select "schema".add_column('master_server_stats', 'value', 1, 'string', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_server_stats', 'description', 2, 'string', false, false, false, '', '1.0a100', null);

\echo master_servers
select "schema".add_column('master_servers', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('master_servers', 'username', 1, 'username', false, false, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master_servers', 'server', 2, 'fkey', false, false, false, 'the pkey of the server they may control', '1.0a100', null);

\echo master_users
select "schema".add_column('master_users', 'username',                   0, 'username', false, true, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master_users', 'is_active',                  1, 'boolean', false, false, false, 'this level of access may be disabled', '1.0a100', null);
select "schema".add_column('master_users', 'can_access_accounting',      2, 'boolean', false, false, false, 'if they can access accounting resources', '1.0a100', null);
select "schema".add_column('master_users', 'can_access_bank_accounting', 3, 'boolean', false, false, false, 'if they can access bank account info', '1.0a100', null);
select "schema".add_column('master_users', 'can_invalidate_tables',      4, 'boolean', false, false, false, 'if they can invalidate master tables', '1.0a100', null);
select "schema".add_column('master_users', 'can_access_admin_web',       5, 'boolean', false, false, false, 'if they can access administrative web pages', '1.0a100', null);
select "schema".add_column('master_users', 'is_ticket_admin',            6, 'boolean', false, false, false, 'if they can access ticket admin stuff', '1.0a100', '1.43');
select "schema".add_column('master_users', 'is_dns_admin',               7, 'boolean', false, false, false, 'if they can access all DNS stuff', '1.0a100', null);
select "schema".add_column('master_users', 'can_switch_users',           8, 'boolean', false, false, false, '', '1.0a100', '1.0a117');
select "schema".add_column('master_users', 'is_router',                  9, 'boolean', false, false, false, 'if they read all router stuff', '1.65', null);
select "schema".add_column('master_users', 'is_cluster_admin',          10, 'boolean', false, false, false, 'if they can control cluster resources', '1.73', null);

\echo monthly_charges
select "schema".add_column('monthly_charges', 'pkey',        0, 'pkey',        true,  true, false, 'a unique, generated number for reference',          '1.0a100', null);
select "schema".add_column('monthly_charges', 'accounting',  1, 'accounting', false, false, false, 'the account code that is charged to',               '1.0a100', null);
select "schema".add_column('monthly_charges', 'package',     2, 'package',    false, false, false, 'the package that this is charged for',              '1.0a100', '1.80');
select "schema".add_column('monthly_charges', 'package',     3, 'accounting', false, false, false, 'the package that this is charged for',              '1.80.0', null);
select "schema".add_column('monthly_charges', 'type',        4, 'string',     false, false, false, 'the type of charge, as found in transaction types', '1.0a100', null);
select "schema".add_column('monthly_charges', 'description', 5, 'string',      true, false, false, 'the description that is placed in the transaction', '1.0a100', null);
select "schema".add_column('monthly_charges', 'quantity',    6, 'decimal_3',  false, false, false, 'the quantity',                                      '1.0a100', null);
select "schema".add_column('monthly_charges', 'rate',        7, 'decimal_2',  false, false, false, 'the rate',                                          '1.0a100', null);
select "schema".add_column('monthly_charges', 'created',     8, 'time',       false, false, false, 'the time this entry was created',                   '1.0a100', null);
select "schema".add_column('monthly_charges', 'created_by',  9, 'username',   false, false, false, 'the business_administrator who created the entry',  '1.0a100', null);
select "schema".add_column('monthly_charges', 'active',     10, 'boolean',    false, false, false, 'flags if this entry is active',                     '1.0a100', null);

\echo mysql_databases
select "schema".add_column('mysql_databases', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('mysql_databases', 'name', 1, 'string', false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('mysql_databases', 'name', 2, 'mysql_database_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('mysql_databases', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.0a100', '1.3');
select "schema".add_column('mysql_databases', 'mysql_server', 4, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.4', null);
select "schema".add_column('mysql_databases', 'package', 5, 'package', false, false, false, 'the package that this database is part of', '1.0a100', '1.80');
select "schema".add_column('mysql_databases', 'package', 6, 'accounting', false, false, false, 'the package that this database is part of', '1.80.0', null);
select "schema".add_column('mysql_databases', 'backup_level', 7, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('mysql_databases', 'backup_retention', 8, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('mysql_databases', 'max_check_table_alert_level', 9, 'string', false, false, false, 'the maximum alert level created for the check table monitoring of this database', '1.74', null);

\echo mysql_db_users
select "schema".add_column('mysql_db_users', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'mysql_database', 1, 'fkey', false, false, false, 'the pkey in mysql_databases', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'mysql_user', 2, 'fkey', false, false, false, 'the pkey in mysql_server_users', '1.0a100', '1.30');
select "schema".add_column('mysql_db_users', 'mysql_server_user', 3, 'fkey', false, false, false, 'the pkey in mysql_server_users', '1.31', null);
select "schema".add_column('mysql_db_users', 'select_priv', 4, 'boolean', false, false, false, 'the SELECT privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'insert_priv', 5, 'boolean', false, false, false, 'the INSERT privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'update_priv', 6, 'boolean', false, false, false, 'the UPDATE privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'delete_priv', 7, 'boolean', false, false, false, 'the DELETE privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'create_priv', 8, 'boolean', false, false, false, 'the CREATE privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'drop_priv', 9, 'boolean', false, false, false, 'the DROP privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'grant_priv', 10, 'boolean', false, false, false, 'the GRANT privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'references_priv', 11, 'boolean', false, false, false, 'the REFERENCES privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'index_priv', 12, 'boolean', false, false, false, 'the INDEX privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'alter_priv', 13, 'boolean', false, false, false, 'the ALTER privilete', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'create_tmp_table_priv', 14, 'boolean', false, false, false, 'the Create_tmp_table_priv', '1.0a111', null);
select "schema".add_column('mysql_db_users', 'lock_tables_priv', 15, 'boolean', false, false, false, 'the Lock_tables_priv', '1.0a111', null);
select "schema".add_column('mysql_db_users', 'create_view_priv', 16, 'boolean', false, false, false, 'the Create_view_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'show_view_priv', 17, 'boolean', false, false, false, 'the Show_view_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'create_routine_priv', 18, 'boolean', false, false, false, 'the Create_routine_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'alter_routine_priv', 19, 'boolean', false, false, false, 'the Alter_routine_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'execute_priv', 20, 'boolean', false, false, false, 'the Execute_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'event_priv', 21, 'boolean', false, false, false, 'the Event_priv', '1.54', null);
select "schema".add_column('mysql_db_users', 'trigger_priv', 22, 'boolean', false, false, false, 'the Trigger_priv', '1.54', null);

\echo mysql_server_users
select "schema".add_column('mysql_server_users', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('mysql_server_users', 'username', 1, 'username', false, false, false, 'the username', '1.0a100', '1.80');
select "schema".add_column('mysql_server_users', 'username', 2, 'mysql_username', false, false, false, 'the username', '1.80.0', null);
select "schema".add_column('mysql_server_users', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the MySQL server', '1.0a100', '1.3');
select "schema".add_column('mysql_server_users', 'mysql_server', 4, 'fkey', false, false, false, 'the pkey of the MySQL server', '1.4', null);
select "schema".add_column('mysql_server_users', 'host', 5, 'ip_address', false, false, false,
'the host this user is allowed to connect from,
if this is not null, all access is restricted to these
hosts, otherwise the entries in mysql_db_users and
mysql_hosts are used.',
    '1.0a100',
    '1.68'
);
select "schema".add_column(
    'mysql_server_users',
    'host',
    6,
    'string',
    false,
    false,
    false,
'the host this user is allowed to connect from,
if this is not null, all access is restricted to these
hosts, otherwise the entries in mysql_db_users and
mysql_hosts are used.',
    '1.69',
    null
);
select "schema".add_column('mysql_server_users', 'disable_log', 7, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);
select "schema".add_column('mysql_server_users', 'predisable_password', 8, 'string', true, false, false, 'the password used before the account was disabled', '1.0a100', null);
select "schema".add_column('mysql_server_users', 'max_questions', 9, 'int', false, false, false, 'the maximum number of questions to this database server, 0 means unlimited', '1.4', null);
select "schema".add_column('mysql_server_users', 'max_updates', 10, 'int', false, false, false, 'the maximum number of updates to this database server, 0 means unlimited', '1.4', null);
select "schema".add_column('mysql_server_users', 'max_connections', 11, 'int', false, false, false, 'the maximum number of connections to this database server, 0 means unlimited', '1.0a111', null);
select "schema".add_column('mysql_server_users', 'max_user_connections', 12, 'int', false, false, false, 'the maximum number of user connections to this database server, 0 means unlimited', '1.4', null);

\echo mysql_servers
select "schema".add_column('mysql_servers', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.4', null);
select "schema".add_column('mysql_servers', 'name', 1, 'string', false, false, false, 'the name of the server', '1.4', '1.80');
select "schema".add_column('mysql_servers', 'name', 2, 'mysql_server_name', false, false, false, 'the name of the server', '1.80.0', null);
select "schema".add_column('mysql_servers', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.4', null);
select "schema".add_column('mysql_servers', 'version', 4, 'fkey', false, false, false, 'the pkey of the MySQL version', '1.4', null);
select "schema".add_column('mysql_servers', 'max_connections', 5, 'int', false, false, false, 'the maximum number of connections for the db', '1.4', null);
select "schema".add_column('mysql_servers', 'net_bind', 6, 'fkey', false, true, false, 'the port the server binds to', '1.4', null);
select "schema".add_column('mysql_servers', 'package', 7, 'string', false, false, false, 'the package who owns the instance', '1.28', '1.80');
select "schema".add_column('mysql_servers', 'package', 8, 'accounting', false, false, false, 'the package who owns the instance', '1.80.0', null);

\echo mysql_users
select "schema".add_column('mysql_users', 'username', 0, 'username', false, true, false, 'the username of the MySQL user', '1.0a100', '1.80');
select "schema".add_column('mysql_users', 'username', 1, 'mysql_username', false, true, false, 'the username of the MySQL user', '1.80.0', null);
select "schema".add_column('mysql_users', 'select_priv', 2, 'boolean', false, false, false, 'the SELECT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'insert_priv', 3, 'boolean', false, false, false, 'the INSERT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'update_priv', 4, 'boolean', false, false, false, 'the UPDATE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'delete_priv', 5, 'boolean', false, false, false, 'the DELETE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'create_priv', 6, 'boolean', false, false, false, 'the CREATE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'drop_priv', 7, 'boolean', false, false, false, 'the DROP privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'reload_priv', 8, 'boolean', false, false, false, 'the RELOAD privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'shutdown_priv', 9, 'boolean', false, false, false, 'the SHUTDOWN privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'process_priv', 10, 'boolean', false, false, false, 'the PROCESS privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'file_priv', 11, 'boolean', false, false, false, 'the FILE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'grant_priv', 12, 'boolean', false, false, false, 'the GRANT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'references_priv', 13, 'boolean', false, false, false, 'the REFERENCES privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'index_priv', 14, 'boolean', false, false, false, 'the INDEX privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'alter_priv', 15, 'boolean', false, false, false, 'the ALTER privilete to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'show_db_priv', 16, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'super_priv', 17, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'create_tmp_table_priv', 18, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'lock_tables_priv', 19, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'execute_priv', 20, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'repl_slave_priv', 21, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'repl_client_priv', 22, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'create_view_priv', 23, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'show_view_priv', 24, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'create_routine_priv', 25, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'alter_routine_priv', 26, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'create_user_priv', 27, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'event_priv', 28, 'boolean', false, false, false, 'the Event_priv', '1.54', null);
select "schema".add_column('mysql_users', 'trigger_priv', 29, 'boolean', false, false, false, 'the Trigger_priv', '1.54', null);
select "schema".add_column('mysql_users', 'disable_log', 30, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);

\echo net_bind_firewalld_zones
select "schema".add_column('net_bind_firewalld_zones', 'pkey', 0, 'pkey', false, true, false, 'a generated pkey', '1.81.0', null);
select "schema".add_column('net_bind_firewalld_zones', 'net_bind', 1, 'fkey', false, false, false, 'the pkey of the port that is associated with the zone', '1.81.0', null);
select "schema".add_column('net_bind_firewalld_zones', 'firewalld_zone', 2, 'fkey', false, false, false, 'the pkey of the zone this port is associated with', '1.81.0', null);

\echo net_binds
select "schema".add_column('net_binds', 'pkey', 0, 'pkey', false, true, false, 'a generated pkey', '1.0a100', null);
select "schema".add_column('net_binds', 'package', 1, 'package', false, false, false, 'the package that owns the opened port', '1.0a100', '1.80');
select "schema".add_column('net_binds', 'package', 2, 'accounting', false, false, false, 'the package that owns the opened port', '1.80.0', null);
select "schema".add_column('net_binds', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this port is bound on', '1.0a100', '1.32');
select "schema".add_column('net_binds', 'server', 4, 'fkey', false, false, false, 'the pkey of the server that this port is bound on', '1.33', null);
select "schema".add_column('net_binds', 'ip_address', 5, 'fkey', false, false, false, 'the pkey of the IP address that is bound to', '1.0a100', null);
select "schema".add_column('net_binds', 'port', 6, 'int', false, false, false, 'the port number that is bound', '1.0a100', '1.68');
select "schema".add_column('net_binds', 'port', 7, 'fkey', false, false, false, 'the port number that is bound', '1.69', '1.80');
select "schema".add_column('net_binds', 'port', 8, 'net_port', false, false, false, 'the port that is bound', '1.80.0', null);
select "schema".add_column('net_binds', 'net_protocol', 9, 'string', false, false, false, 'the network protocol (<code>net_protocols</code>)', '1.0a100', '1.80');
select "schema".add_column('net_binds', 'app_protocol', 10, 'string', false, false, false, 'the application protocol (<code>protocols</code>)', '1.0a100', null);
select "schema".add_column('net_binds', 'open_firewall', 11, 'boolean', false, false, false, 'flags if the firewall should be opened for this port', '1.0a100', '1.80.2');
select "schema".add_column('net_binds', 'monitor_delay', 12, 'int', true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net_binds', 'monitor_parameter', 13, 'string', true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net_binds', 'monitor_contact', 14, 'string', true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net_binds', 'monitor_info', 15, 'string', true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net_binds', 'monitoring_enabled', 16, 'boolean', false, false, false, 'turns on monitoring of the port', '1.0a104', null);
select "schema".add_column('net_binds', 'monitoring_parameters', 17, 'string', true, false, false, 'the URL-encoded name=value pairs of monitoring parameters', '1.58', null);

\echo net_device_ids
select "schema".add_column('net_device_ids', 'name', 0, 'string', false, true, true, 'the unique name of the device', '1.0a100', null);
select "schema".add_column('net_device_ids', 'is_loopback', 1, 'boolean', false, false, true, 'if the device is the loopback device', '1.0a100', null);

\echo net_devices
select "schema".add_column('net_devices', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated pkey', '1.0a100', null);
select "schema".add_column('net_devices', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server that contains the device', '1.0a100', '1.32');
select "schema".add_column('net_devices', 'server', 2, 'fkey', false, false, false, 'the pkey of the server that contains the device', '1.33', null);
select "schema".add_column('net_devices', 'device_id', 3, 'string', false, false, false, 'the name of the device', '1.0a100', null);
select "schema".add_column('net_devices', 'description', 4, 'string', false, false, false, 'a description of the device', '1.0a100', null);
select "schema".add_column('net_devices', 'delete_redhat_route', 5, 'string', true, false, false, 'the default routing from the network scripts that should be removed', '1.0a100', '1.0a111');
select "schema".add_column('net_devices', 'delete_route', 6, 'string', true, false, false, 'the default routing from the network scripts that should be removed', '1.0a112', null);
select "schema".add_column('net_devices', 'gateway', 7, 'ip_address', true, false, false, 'the gateway IP address', '1.0a100', null);
select "schema".add_column('net_devices', 'netmask', 8, 'string', false, false, false, 'the netmask of the local network', '1.0a100', '1.37');
select "schema".add_column('net_devices', 'network', 9, 'ip_address', true, false, false, 'the local network', '1.0a112', null);
select "schema".add_column('net_devices', 'broadcast', 10, 'ip_address', true, false, false, 'the broadcast IP', '1.0a112', null);
select "schema".add_column('net_devices', 'mac_address', 11, 'string', true, true, false, 'the MAC address to be used on the device', '1.0a128', '1.80');
select "schema".add_column('net_devices', 'mac_address', 12, 'mac_address', true, true, false, 'the MAC address to be used on the device', '1.80.0', null);
select "schema".add_column('net_devices', 'max_bit_rate', 13, 'long', true, false, false, 'the maximum bits per second for this network device', '1.2', null);
select "schema".add_column('net_devices', 'monitoring_bit_rate_low', 14, 'long', true, false, false, 'the 5-minute average that will trigger a low-level alert', '1.35', null);
select "schema".add_column('net_devices', 'monitoring_bit_rate_medium', 15, 'long', true, false, false, 'the 5-minute average that will trigger a medium-level alert', '1.35', null);
select "schema".add_column('net_devices', 'monitoring_bit_rate_high', 16, 'long', true, false, false, 'the 5-minute average that will trigger a high-level alert', '1.35', null);
select "schema".add_column('net_devices', 'monitoring_bit_rate_critical', 17, 'long', true, false, false, 'the 5-minute average that will trigger a critical-level alert', '1.35', null);
select "schema".add_column('net_devices', 'monitoring_enabled', 18, 'boolean', false, false, false, 'indicates that this device should be monitored', '1.70', null);

\echo net_tcp_redirects
select "schema".add_column('net_tcp_redirects', 'net_bind', 0, 'int', false, true, false, 'the pkey as found in net_binds', '1.0a111', '1.68');
select "schema".add_column('net_tcp_redirects', 'net_bind', 1, 'fkey', false, true, false, 'the pkey as found in net_binds', '1.69', null);
select "schema".add_column('net_tcp_redirects', 'cps', 2, 'int', false, false, false, 'the maximum number of connections per second before the redirect is temporarily disabled', '1.0a111', null);
select "schema".add_column('net_tcp_redirects', 'cps_overload_sleep_time', 3, 'int', false, false, false, 'the number of seconds the service will be disabled', '1.0a111', null);
select "schema".add_column('net_tcp_redirects', 'destination_host', 4, 'hostname', false, false, false, 'the destination IP address or hostname, please note that hostnames are only resolved once on xinetd startup', '1.0a111', null);
select "schema".add_column('net_tcp_redirects', 'destination_port', 5, 'int', false, false, false, 'the remote port to connect to', '1.0a111', '1.68');
select "schema".add_column('net_tcp_redirects', 'destination_port', 6, 'fkey', false, false, false, 'the remote port to connect to', '1.69', '1.80');
select "schema".add_column('net_tcp_redirects', 'destination_port', 7, 'net_port', false, false, false, 'the remote port to connect to', '1.80.0', null);

\echo notice_logs
select "schema".add_column('notice_log', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'create_time', 1, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'accounting', 2, 'accounting', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'billing_contact', 3, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'billing_email', 4, 'email', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'balance', 5, 'decimal_2', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'notice_type', 6, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'transid', 7, 'int', true, false, false, '', '1.0a100', '1.68');
select "schema".add_column('notice_log', 'transid', 8, 'fkey', true, false, false, '', '1.69', null);

\echo notice_types
select "schema".add_column('notice_types', 'type', 0, 'string', false, true, true, '', '1.0a100', null);
select "schema".add_column('notice_types', 'description', 1, 'string', false, false, true, '', '1.0a100', null);

\echo operating_system_versions
select "schema".add_column('operating_system_versions', 'pkey', 0, 'pkey', false, true, true, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'operating_system', 1, 'string', false, false, true, 'the name of the OS', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'version_number', 2, 'string', false, false, true, 'the number of OS version', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'version_name', 3, 'string', false, false, true, 'the name of this OS release', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'architecture', 4, 'string', false, false, true, 'the name of the architecture', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'display', 5, 'string', false, false, true, 'the full display name for this version', '1.0a100', '1.0a107');
select "schema".add_column('operating_system_versions', 'display', 6, 'string', false, true, true, 'the full display name for this version', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'is_aoserv_daemon_supported', 7, 'boolean', false, false, true, 'can AOServ Daemon be ran on this OS', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'sort_order', 8, 'short', false, true, true, 'the default sort order', '1.3', null);

\echo operating_systems
select "schema".add_column('operating_systems', 'name', 0, 'string', false, true, true, 'the unique name of the operating system', '1.0a100', null);
select "schema".add_column('operating_systems', 'display', 1, 'string', false, false, true, 'the display version of the name', '1.0a100', null);
select "schema".add_column('operating_systems', 'is_unix', 2, 'boolean', false, false, true, 'indicates that this is a Unix-based OS', '1.0a100', null);

\echo package_categories
select "schema".add_column('package_categories', 'name', 0, 'string', false, true, true, 'the category name', '1.0a123', null);
select "schema".add_column('package_categories', 'display', 1, 'string', false, false, true, 'the display value', '1.0a123', '1.60');

\echo package_definition_limits
select "schema".add_column('package_definition_limits', 'pkey', 0, 'pkey', false, true, false, 'the unique identifier for this limit', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'package_definition', 1, 'fkey', false, false, false, 'the pkey of the package definition', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'resource', 2, 'string', false, false, false, 'the resource name', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'soft_limit', 3, 'int', true, false, false, 'the number that may be used for additional charges are added, NULL means unlimited', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'hard_limit', 4, 'int', true, false, false, 'the maximum number that may be allocated, NULL means unlimited', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'additional_rate', 5, 'decimal_2', true, false, false, 'the monthly rate for those past the soft_limit', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'additional_transaction_type', 6, 'string', true, false, false, '', '1.0a123', null);

\echo package_definitions
select "schema".add_column('package_definitions', 'pkey', 0, 'pkey', false, true, false, 'the unique ID of the package definition', '1.0a123', null);
select "schema".add_column('package_definitions', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the seller/reseller that supports this package', '1.0a123', '1.43');
select "schema".add_column('package_definitions', 'brand', 2, 'accounting', false, false, false, 'the brand of the seller/reseller that supports this package', '1.44', '1.44');
select "schema".add_column('package_definitions', 'accounting', 3, 'accounting', false, false, false, 'the accounting code of the seller/reseller that supports this package', '1.45', null);
select "schema".add_column('package_definitions', 'category', 4, 'string', false, false, false, 'the package category', '1.0a123', null);
select "schema".add_column('package_definitions', 'name', 5, 'string', false, false, false, 'the name of the package', '1.0a123', null);
select "schema".add_column('package_definitions', 'version', 6, 'string', false, false, false, 'the unique version of this package', '1.0a123', null);
select "schema".add_column('package_definitions', 'display', 7, 'string', false, false, false, 'a short description for display use', '1.0a123', null);
select "schema".add_column('package_definitions', 'description', 8, 'string', false, false, false, 'a description of the package definition', '1.0a123', null);
select "schema".add_column('package_definitions', 'setup_fee', 9, 'decimal_2', true, false, false, 'the setup fee for this package definition', '1.0a123', null);
select "schema".add_column('package_definitions', 'setup_fee_transaction_type', 10, 'string', true, false, false, '', '1.0a123', null);
select "schema".add_column('package_definitions', 'monthly_rate', 11, 'decimal_2', true, false, false, 'the default monthly charge for this package', '1.0a123', null);
select "schema".add_column('package_definitions', 'monthly_rate_transaction_type', 12, 'string', true, false, false, '', '1.0a123', null);
select "schema".add_column('package_definitions', 'active', 13, 'boolean', false, false, false, 'allows new accounts for this package', '1.0a123', null);
select "schema".add_column('package_definitions', 'approved', 14, 'boolean', false, false, false, 'once approved a definition may be used for packages, but may not be modified', '1.0a123', null);

\echo packages
select "schema".add_column('packages', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('packages', 'name', 1, 'package', false, true, false, 'the unique name of this package entry', '1.0a100', '1.80');
select "schema".add_column('packages', 'name', 2, 'accounting', false, true, false, 'the unique name of this package entry', '1.80.0', null);
select "schema".add_column('packages', 'accounting', 3, 'accounting', false, false, false, 'the accounting code of the business that pays for this package', '1.0a100', null);
select "schema".add_column('packages', 'level', 4, 'string', false, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'rate', 5, 'decimal_2', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'package_definition', 6, 'fkey', false, false, false, 'the definition of the package', '1.0a123', null);
select "schema".add_column('packages', 'created', 7, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('packages', 'created_by', 8, 'username', false, false, false, '', '1.0a100', null);
select "schema".add_column('packages', 'user_limit', 9, 'int', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'additional_user_rate', 10, 'decimal_2', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'pop_limit', 11, 'int', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'additional_pop_rate', 12, 'decimal_2', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'daily_smtp_in_limit', 13, 'int', false, false, false, 'the number of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('packages', 'daily_smtp_in_bandwidth_limit', 14, 'long', false, false, false, 'the total size of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('packages', 'daily_smtp_out_limit', 15, 'int', false, false, false, 'the number of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('packages', 'daily_smtp_out_bandwidth_limit', 16, 'long', false, false, false, 'the total size of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('packages', 'disable_log', 17, 'fkey', true, false, false, 'indicates that the package is disabled', '1.0a100', null);
select "schema".add_column('packages', 'email_in_burst', 18, 'int', true, false, false, 'the maximum burst of inbound email before limiting begins', '1.24', null);
select "schema".add_column('packages', 'email_in_rate', 19, 'float', true, false, false, 'the number of sustained inbound emails per second', '1.24', null);
select "schema".add_column('packages', 'email_out_burst', 20, 'int', true, false, false, 'the maximum burst of outbound email before limiting begins', '1.24', null);
select "schema".add_column('packages', 'email_out_rate', 21, 'float', true, false, false, 'the number of sustained outbound emails per second', '1.24', null);
select "schema".add_column('packages', 'email_relay_burst', 22, 'int', true, false, false, 'the maximum burst of relay email before limiting begins', '1.24', null);
select "schema".add_column('packages', 'email_relay_rate', 23, 'float', true, false, false, 'the number of sustained relay emails per second', '1.24', null);

\echo payment_types
select "schema".add_column('payment_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('payment_types', 'description', 1, 'string', false, false, true, 'a description of the type of payment', '1.0a100', null);
select "schema".add_column('payment_types', 'active', 2, 'boolean', false, false, true, 'indicates if payment is currently accepted via this method', '1.0a100', null);
select "schema".add_column('payment_types', 'allow_web', 3, 'boolean', false, false, true, 'indicates if payment is allowed via a web form', '1.0a100', null);

\echo physical_servers
select "schema".add_column('physical_servers', 'server', 0, 'fkey', false, true, false, 'a reference to servers', '1.36', null);
select "schema".add_column('physical_servers', 'rack', 1, 'fkey', true, false, false, 'the rack that houses this server', '1.36', null);
select "schema".add_column('physical_servers', 'rack_units', 2, 'short', true, false, false, 'the number of rack units', '1.36', null);
select "schema".add_column('physical_servers', 'ram', 3, 'int', true, false, false, 'the total number of megabytes of RAM in this server', '1.36', null);
select "schema".add_column('physical_servers', 'processor_type', 4, 'string', true, false, false, 'the processor type', '1.36', null);
select "schema".add_column('physical_servers', 'processor_speed', 5, 'int', true, false, false, 'the processor speed in MHz', '1.36', null);
select "schema".add_column('physical_servers', 'processor_cores', 6, 'int', true, false, false, 'the total number of processor cores, hyperthreads are counted as different cores', '1.36', null);
select "schema".add_column('physical_servers', 'max_power', 7, 'float', true, false, false, 'the number of amps this server consumes under peak load', '1.36', null);
select "schema".add_column('physical_servers', 'supports_hvm', 8, 'boolean', true, false, false, 'indicates supports full hardware virtualization', '1.37', null);
select "schema".add_column('physical_servers', 'ups_type', 9, 'string', false, false, false, 'the type of UPS powering the server', '1.63', null);

\echo postgres_databases
select "schema".add_column('postgres_databases', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('postgres_databases', 'name', 1, 'string', false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('postgres_databases', 'name', 2, 'postgres_database_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('postgres_databases', 'postgres_server', 3, 'fkey', false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', null);
select "schema".add_column('postgres_databases', 'datdba', 4, 'fkey', false, false, false, 'the datdba for the database', '1.0a100', null);
select "schema".add_column('postgres_databases', 'encoding', 5, 'fkey', false, false, false, 'the pkey of the encoding system used for the database', '1.0a100', null);
select "schema".add_column('postgres_databases', 'is_template', 6, 'boolean', false, false, false, 'if true, this database is a template', '1.0a100', null);
select "schema".add_column('postgres_databases', 'allow_conn', 7, 'boolean', false, false, false, 'if true, this database is accepting connections', '1.0a100', null);
select "schema".add_column('postgres_databases', 'backup_level', 8, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('postgres_databases', 'backup_retention', 9, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('postgres_databases', 'enable_postgis', 10, 'boolean', false, false, false, 'indicates PostGIS is enabled on this database', '1.27', null);

\echo postgres_encodings
select "schema".add_column('postgres_encodings', 'pkey', 0, 'pkey', false, true, true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('postgres_encodings', 'encoding', 1, 'string', false, false, true, 'the name of the encoding', '1.0a100', null);
select "schema".add_column('postgres_encodings', 'postgres_version', 2, 'fkey', false, false, true, 'the version of PostgreSQL', '1.0a100', null);

\echo postgres_servers
select "schema".add_column('postgres_servers', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('postgres_servers', 'name', 1, 'string', false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('postgres_servers', 'name', 2, 'postgres_server_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('postgres_servers', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.0a100', null);
select "schema".add_column('postgres_servers', 'version', 4, 'fkey', false, false, false, 'the pkey of the PostgreSQL version', '1.0a100', null);
select "schema".add_column('postgres_servers', 'max_connections', 5, 'int', false, false, false, 'the maximum number of connections for the db', '1.0a100', null);
select "schema".add_column('postgres_servers', 'net_bind', 6, 'fkey', false, true, false, 'the port the server binds to', '1.0a100', null);
select "schema".add_column('postgres_servers', 'sort_mem', 7, 'int', false, false, false, 'the amount of shared memory used for sorting', '1.0a100', null);
select "schema".add_column('postgres_servers', 'shared_buffers', 8, 'int', false, false, false, 'the number of shared buffers', '1.0a100', null);
select "schema".add_column('postgres_servers', 'fsync', 9, 'boolean', false, false, false, 'indicates that writes are synchronous', '1.0a100', null);
select "schema".add_column('postgres_servers', 'last_postgres_usesysid', 10, 'fkey', false, false, false, 'the last usesysid assigned on the server', '1.0a100', '1.0a130');

\echo postgres_server_users
select "schema".add_column('postgres_server_users', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated number', '1.0a100', null);
select "schema".add_column('postgres_server_users', 'username', 1, 'username', false, false, false, 'the username as found in postgres_users', '1.0a100', '1.80');
select "schema".add_column('postgres_server_users', 'username', 2, 'postgres_username', false, false, false, 'the username as found in postgres_users', '1.80.0', null);
select "schema".add_column('postgres_server_users', 'postgres_server', 3, 'pkey', false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', '1.68');
select "schema".add_column('postgres_server_users', 'postgres_server', 4, 'fkey', false, false, false, 'the pkey of the PostgreSQL server', '1.69', null);
select "schema".add_column('postgres_server_users', 'usesysid', 5, 'int', false, false, false, 'the PostgreSQL usesysid as found in pg_users', '1.0a100', '1.0a130');
select "schema".add_column('postgres_server_users', 'disable_log', 6, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);
select "schema".add_column('postgres_server_users', 'predisable_password', 7, 'string', true, false, false, 'the password that was on the account before it was disabled', '1.0a100', null);

\echo postgres_users
select "schema".add_column('postgres_users', 'username', 0, 'username', false, true, false, 'the username of the user', '1.0a100', '1.80');
select "schema".add_column('postgres_users', 'username', 1, 'postgres_username', false, true, false, 'the username of the user', '1.80.0', null);
select "schema".add_column('postgres_users', 'createdb', 2, 'boolean', false, false, false, 'usecreatedb flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'trace', 3, 'boolean', false, false, false, 'usetrace flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'super', 4, 'boolean', false, false, false, 'usesuper flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'catupd', 5, 'boolean', false, false, false, 'usecatupd flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'disable_log', 6, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);

\echo postgres_versions
select "schema".add_column('postgres_versions', 'version', 0, 'fkey', false, true, true, 'a reference to the PostgreSQL details in the <code>technology_versions</code> table', '1.0a100', null);
select "schema".add_column('postgres_versions', 'default_port', 1, 'int', false, true, true, '', '1.0a100', '1.0a109');
select "schema".add_column('postgres_versions', 'minor_version', 2, 'string', false, false, true, 'the minor version for this version (used for installation at /usr/postgresql/<minor_version>', '1.0a121', null);
select "schema".add_column('postgres_versions', 'postgis_version', 3, 'fkey', true, false, true, 'a reference to the PostGIS defails in the <code>technology_versions</code> table', '1.27', null);

\echo private_ftp_servers
select "schema".add_column('private_ftp_servers', 'ip_address', 0, 'fkey', false, true, false, 'the pkey of the net_bind that the FTP server is on', '1.0a100', '1.0a112');
select "schema".add_column('private_ftp_servers', 'net_bind', 1, 'fkey', false, true, false, 'the root directory', '1.0a113', null);
select "schema".add_column('private_ftp_servers', 'root', 2, 'path', false, false, false, 'the file transfers are logged to', '1.0a100', '1.38');
select "schema".add_column('private_ftp_servers', 'logfile', 3, 'path', false, false, false, 'the file transfers are logged to', '1.0a100', null);
select "schema".add_column('private_ftp_servers', 'hostname', 4, 'hostname', false, false, false, 'the hostname the server reports', '1.0a100', '1.68');
select "schema".add_column('private_ftp_servers', 'hostname', 5, 'domain_name', false, false, false, 'the hostname the server reports', '1.69', null);
select "schema".add_column('private_ftp_servers', 'email', 6, 'email', false, false, false, 'the email address the server reports', '1.0a100', null);
select "schema".add_column('private_ftp_servers', 'price', 7, 'decimal_2', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('private_ftp_servers', 'created', 8, 'time', false, false, false, 'the time the server was added', '1.0a100', null);
select "schema".add_column('private_ftp_servers', 'linux_server_account', 9, 'int', false, false, false, '', '1.0a100', '1.68');
select "schema".add_column('private_ftp_servers', 'linux_server_account', 10, 'fkey', false, false, false, '', '1.69', null);
select "schema".add_column('private_ftp_servers', 'linux_server_group', 11, 'int', false, false, false, '', '1.0a100', '1.38');
select "schema".add_column('private_ftp_servers', 'allow_anonymous', 12, 'boolean', false, false, false, 'enabled or disabled anonymous access to the server', '1.0a113', null);

\echo processor_types
select "schema".add_column('processor_types', 'type', 0, 'string', false, true, true, 'the unique name of the type of processor', '1.36', null);
select "schema".add_column('processor_types', 'sort_order', 1, 'short', false, true, true, 'the sort order of the processor, those sorted higher may be substituted for those sorted lower', '1.36', null);

\echo protocols
select "schema".add_column('protocols', 'protocol', 0, 'string', false, true, true, 'the unique name of the protocol', '1.0a100', null);
select "schema".add_column('protocols', 'port', 1, 'int', false, false, true, 'the default port of the protocol', '1.0a100', '1.68');
select "schema".add_column('protocols', 'port', 2, 'fkey', false, false, true, 'the default port of the protocol', '1.69', '1.80');
select "schema".add_column('protocols', 'port', 3, 'net_port', false, false, true, 'the default port of the protocol', '1.80.0', null);
select "schema".add_column('protocols', 'name', 4, 'string', false, false, true, 'the name of the service', '1.0a100', null);
select "schema".add_column('protocols', 'is_user_service', 5, 'boolean', false, false, true, 'indicates that a user may add and remove this service', '1.0a105', null);
select "schema".add_column('protocols', 'net_protocol', 6, 'string', false, false, true, 'the default network protocol for this protocol', '1.0a105', '1.80');

\echo racks
select "schema".add_column('racks', 'pkey', 0, 'pkey', false, true, false, 'the unique ID for the rack', '1.36', null);
select "schema".add_column('racks', 'farm', 1, 'string', false, false, false, 'the server_farm housing the rack', '1.36', null);
select "schema".add_column('racks', 'name', 2, 'string', false, false, false, 'the per-farm unique name', '1.36', null);
select "schema".add_column('racks', 'max_power', 3, 'float', true, false, false, 'the maximum electrical load supported by the rack', '1.36', null);
select "schema".add_column('racks', 'total_rack_units', 4, 'int', true, false, false, 'the number of rack units of physical space', '1.36', null);

\echo resellers
select "schema".add_column('resellers', 'accounting', 0, 'accounting', false, true, false, '', '1.44', null);
select "schema".add_column('resellers', 'ticket_auto_escalate', 1, 'boolean', false, false, false, '', '1.44', null);

\echo resources
select "schema".add_column('resources', 'name', 0, 'string', false, true, true, 'the name of the specific resource', '1.0a100', null);
select "schema".add_column('resources', 'unit', 1, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('resources', 'singular_display_unit', 2, 'string', false, false, true, 'the unit for display purposes (singular)', '1.0a123', '1.60');
select "schema".add_column('resources', 'plural_display_unit', 3, 'string', false, false, true, 'the unit for display purposes (plural)', '1.0a123', '1.60');
select "schema".add_column('resources', 'per_unit', 4, 'string', false, false, true, 'the unit for display as a "per"', '1.0a123', '1.60');
select "schema".add_column('resources', 'description', 5, 'string', false, false, true, 'a description of the resource', '1.0a100', '1.60');

\echo sendmail_binds
select "schema".add_column('sendmail_binds', 'net_bind',        0, 'fkey',   false,  true, false, 'the IP address, port, and protocol details',   '1.81.10', null);
select "schema".add_column('sendmail_binds', 'sendmail_server', 1, 'fkey',   false, false, false, 'the server that is listening on the address',  '1.81.10', null);
select "schema".add_column('sendmail_binds', 'servername',      2, 'string',  true, false, false, 'the Name for DaemonPortOptions for this bind', '1.81.10', null);

\echo sendmail_servers
select "schema".add_column('sendmail_servers', 'pkey',                      0, 'pkey',        false,  true, false, 'a generated unique number',                                             '1.81.10', null);
select "schema".add_column('sendmail_servers', 'ao_server',                 1, 'fkey',        false, false, false, 'the pkey of the server that runs this sendmail instance',               '1.81.10', null);
select "schema".add_column('sendmail_servers', 'name',                      2, 'string',       true, false, false, 'the name of the instance on the server, null for the default instance', '1.81.10', null);
select "schema".add_column('sendmail_servers', 'package',                   3, 'fkey',        false, false, false, 'the package that owns the SSL certificate',                             '1.81.10', null);
select "schema".add_column('sendmail_servers', 'hostname',                  4, 'domain_name',  true, false, false, 'the fully qualified hostname for Dw, Dm, and Dj',                       '1.81.10', null);
select "schema".add_column('sendmail_servers', 'server_certificate',        5, 'fkey',        false, false, false, 'the certificate used for this server',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_certificate',        6, 'fkey',        false, false, false, 'the certificate used for this client',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'allow_plaintext_auth',      7, 'boolean',     false, false, false, 'allows plaintext authentication (PLAIN/LOGIN) on non-TLS links',        '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_queue_children',        8, 'int',          true, false, false, 'the value for confMAX_QUEUE_CHILDREN',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'nice_queue_run',            9, 'int',          true, false, false, 'the value for confNICE_QUEUE_RUN',                                      '1.81.10', null);
select "schema".add_column('sendmail_servers', 'delay_la',                 10, 'int',          true, false, false, 'the value for confDELAY_LA',                                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'queue_la',                 11, 'int',          true, false, false, 'the value for confQUEUE_LA',                                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'refuse_la',                12, 'int',          true, false, false, 'the value for confREFUSE_LA',                                           '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_daemon_children',      13, 'int',          true, false, false, 'the value for confMAX_DAEMON_CHILDREN',                                 '1.81.10', null);
select "schema".add_column('sendmail_servers', 'bad_rcpt_throttle',        14, 'int',          true, false, false, 'the value for confBAD_RCPT_THROTTLE',                                   '1.81.10', null);
select "schema".add_column('sendmail_servers', 'connection_rate_throttle', 15, 'int',          true, false, false, 'the value for confCONNECTION_RATE_THROTTLE',                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_message_size',         16, 'int',          true, false, false, 'the value for confMAX_MESSAGE_SIZE',                                    '1.81.10', null);
select "schema".add_column('sendmail_servers', 'min_free_blocks',          17, 'int',          true, false, false, 'the value for confMIN_FREE_BLOCKS',                                     '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_addr_inet',         18, 'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet',                       '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_addr_inet6',        19, 'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet6',                      '1.81.10', null);

\echo server_farms
select "schema".add_column('server_farms', 'name', 0, 'string', false, true, false, 'the unique name of the farm', '1.0a100', null);
select "schema".add_column('server_farms', 'description', 1, 'string', false, false, false, 'a description of the farm', '1.0a100', null);
select "schema".add_column('server_farms', 'protected_net', 2, 'string', false, false, false, 'the x.x.x.x/xx network that is protected by the firewalls', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'allow_same_server_backup', 3, 'boolean', false, false, false, 'allows backup files to be stored on the same server as the source files', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'backup_farm', 4, 'string', false, false, false, 'the farm that handles backup for this farm', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'owner', 5, 'fkey', false, false, false, 'the package that owns of the farm', '1.0a102', null);
select "schema".add_column('server_farms', 'use_restricted_smtp_port', 6, 'boolean', false, false, false, 'outgoing servers should use restricted source ports (affects firewall rules)', '1.26', null);

\echo servers
select "schema".add_column('servers', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('servers', 'hostname', 1, 'hostname', false, true, false, 'the unique hostname of the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'farm', 2, 'string', false, false, false, 'the name of the farm the server is located in', '1.0a100', null);
select "schema".add_column('servers', 'owner', 3, 'accounting', false, false, false, 'the business that owns the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'administrator', 4, 'username', false, false, false, 'the primary administrator of the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'description', 5, 'string', false, false, false, 'a description of the servers purpose', '1.0a100', null);
select "schema".add_column('servers', 'architecture', 6, 'string', false, false, false, '', '1.0a100', '1.0a107');
select "schema".add_column('servers', 'backup_hour', 7, 'int', false, false, false, 'the hour of the day the backup will occur, in server time zone', '1.0a100', '1.30');
select "schema".add_column('servers', 'last_backup_time', 8, 'time', true, false, false, 'the time the last backup was started', '1.0a100', '1.30');
select "schema".add_column('servers', 'operating_system_version', 9, 'fkey', false, false, false, 'the version of operating system running on the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'operating_system_version', 10, 'fkey', true, false, false, 'the version of operating system running on the server, if known', '1.31', null);
select "schema".add_column('servers', 'asset_label', 11, 'string', true, false, false, 'the value contained on any asset label', '1.0a108', '1.30');
select "schema".add_column('servers', 'minimum_power', 12, 'float', true, false, false, 'the minimum power consumption in amps', '1.16', '1.30');
select "schema".add_column('servers', 'maximum_power', 13, 'float', true, false, false, 'the maximum power consumption in amps', '1.16', '1.30');
select "schema".add_column('servers', 'package', 14, 'fkey', false, false, false, 'the package accountable for resources used by the server', '1.31', null);
select "schema".add_column('servers', 'name', 15, 'string', false, false, false, 'the per-package unique name of the server (no special formatting required)', '1.31', null);
select "schema".add_column('servers', 'monitoring_enabled', 16, 'boolean', false, false, false, 'enables/disables monitoring', '1.32', null);

\echo shells
select "schema".add_column('shells', 'path', 0, 'path', false, true, true, 'the complete path to the executable', '1.0a100', null);
select "schema".add_column('shells', 'is_login', 1, 'boolean', false, false, true, 'indicates if the shells gives process control', '1.0a100', null);
select "schema".add_column('shells', 'is_system', 2, 'boolean', false, false, true, 'indicates that this shell is for internal use only', '1.0a100', null);

\echo signup_request_options
select "schema".add_column('signup_request_options', 'pkey', 0, 'pkey', false, true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup_request_options', 'request', 1, 'fkey', false, false, false, 'the id of the request this option is part of', '1.23', null);
select "schema".add_column('signup_request_options', 'name', 2, 'string', false, false, false, 'the unique-per-request name of the option', '1.23', null);
select "schema".add_column('signup_request_options', 'value', 3, 'string', true, false, false, 'the value of the option', '1.23', null);

\echo signup_requests
select "schema".add_column('signup_requests', 'pkey', 0, 'pkey', false, true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup_requests', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the parent business for the new account', '1.23', '1.43');
select "schema".add_column('signup_requests', 'brand', 2, 'accounting', false, false, false, 'the brand of the parent business for the new account', '1.44', null);
select "schema".add_column('signup_requests', 'time', 3, 'time', false, false, false, 'the time the request was added', '1.23', null);
select "schema".add_column('signup_requests', 'ip_address', 4, 'ip_address', false, false, false, 'the IP address of the user who signed-up', '1.23', null);
select "schema".add_column('signup_requests', 'package_definition', 5, 'fkey', false, false, false, 'the pkey of the Package Definition requested', '1.23', null);
select "schema".add_column('signup_requests', 'business_name', 6, 'string', false, false, false, 'the name of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_phone', 7, 'string', false, false, false, 'the phone number of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_phone', 8, 'phone', false, false, false, 'the phone number of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_fax', 9, 'string', true, false, false, 'the fax number of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_fax', 10, 'phone', true, false, false, 'the fax number of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_address1', 11, 'string', false, false, false, 'the street address of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_address2', 12, 'string', true, false, false, 'the street address of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_city',     13, 'city', false, false, false, 'the city  of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_city',     14, 'string', false, false, false, 'the city  of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_state',    15, 'state', true, false, false, 'the state or providence of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_state',    16, 'string', true, false, false, 'the state or providence of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_country',  17, 'country', false, false, false, 'the two-character country code of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_country',  18, 'string', false, false, false, 'the two-character country code of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_zip',      19, 'zip', true, false, false, 'the zip code of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_zip',      20, 'string', true, false, false, 'the zip code of the business', '1.69', null);
select "schema".add_column('signup_requests', 'ba_name',           21, 'string', false, false, false, 'the administrator''s name', '1.23', null);
select "schema".add_column('signup_requests', 'ba_title',          22, 'string', true, false, false, 'the administrator''s title', '1.23', null);
select "schema".add_column('signup_requests', 'ba_work_phone',     23, 'string', false, false, false, 'the administrator''s work phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_work_phone',     24, 'string', false, false, false, 'the administrator''s work phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_cell_phone',     25, 'string', true, false, false, 'the administrator''s cell phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_cell_phone',     26, 'string', true, false, false, 'the administrator''s cell phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_home_phone',     27, 'string', true, false, false, 'the administrator''s home phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_home_phone',     28, 'string', true, false, false, 'the administrator''s home phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_fax',            29, 'string', true, false, false, 'the administrator''s fax number', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_fax',            30, 'string', true, false, false, 'the administrator''s fax number', '1.69', null);
select "schema".add_column('signup_requests', 'ba_email',          31, 'email', false, false, false, 'the administrator''s email address', '1.23', null);
select "schema".add_column('signup_requests', 'ba_address1',       32, 'string', true, false, false, 'the street address of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'ba_address2',       33, 'string', true, false, false, 'the street address of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'ba_city',           34, 'city', true, false, false, 'the city of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_city',           35, 'string', true, false, false, 'the city of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_state',          36, 'state', true, false, false, 'the state or providence of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_state',          37, 'string', true, false, false, 'the state or providence of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_country',        38, 'country', true, false, false, 'the two-character country code of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_country',        39, 'string', true, false, false, 'the two-character country code of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_zip',            40, 'zip', true, false, false, 'the zip code of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_zip',            41, 'string', true, false, false, 'the zip code of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_username',       42, 'username', false, false, false, 'the username of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'billing_contact',   43, 'string', false, false, false, 'the name of the billing contact', '1.23', null);
select "schema".add_column('signup_requests', 'billing_email',        44, 'email', false, false, false, 'the email address of the billing contact', '1.23', null);
select "schema".add_column('signup_requests', 'billing_use_monthly',  45, 'boolean', false, false, false, 'if true, the credit_card will be used every month automatically', '1.23', null);
select "schema".add_column('signup_requests', 'billing_pay_one_year', 46, 'boolean', false, false, false, 'if true, one-year in advance will be charged to the credit_card and they will receive a credit for a free month', '1.23', null);
select "schema".add_column('signup_requests', 'encrypted_data',       47, 'string', false, false, false, 'the credit card details and password are stored encrypted', '1.23', null);
select "schema".add_column('signup_requests', 'encryption_from',      48, 'fkey', false, false, false, 'the from that was used for encryption', '1.31', null);
select "schema".add_column('signup_requests', 'encryption_key',       49, 'fkey', false, false, false, 'the recipient that was used for encryption', '1.23', '1.30');
select "schema".add_column('signup_requests', 'encryption_recipient', 50, 'fkey', false, false, false, 'the recipient that was used for encryption', '1.31', null);
select "schema".add_column('signup_requests', 'completed_by',         51, 'username', true, false, false, 'the username of the person who completed this sign-up request', '1.23', null);
select "schema".add_column('signup_requests', 'completed_time',       52, 'time', true, false, false, 'the time this request was completed', '1.23', null);

\echo spam_email_messages
select "schema".add_column('spam_email_messages', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'email_relay', 1, 'fkey', false, false, false, 'the relay that has been denied', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'time', 2, 'time', false, false, false, 'the time the message was added', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'message', 3, 'string', false, false, false, 'the message contents', '1.0a100', null);

\echo ssl_certificate_names
select "schema".add_column('ssl_certificate_names', 'pkey',            0, 'pkey',        false,  true, false, 'a generated primary key',                                      '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'ssl_certificate', 1, 'fkey',        false, false, false, 'the pkey of the SSL certificate this name is on',              '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'is_common_name',  2, 'boolean',     false, false, false, 'indicates this is the Common Name (CN) or a Subject Alt Name', '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'is_wildcard',     3, 'boolean',     false, false, false, 'is a *.(domain) wildcard certificate',                         '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'domain',          4, 'domain_name', false, false, false, 'the domain name',                                              '1.81.10', null);

\echo ssl_certificate_other_uses
select "schema".add_column('ssl_certificate_other_uses', 'pkey',            0, 'pkey',   false,  true, false, 'a generated primary key',                                                 '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'ssl_certificate', 1, 'fkey',   false, false, false, 'the pkey of the SSL certificate this name is on',                         '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'sort_order',      2, 'short',  false, false, false, 'the per-certificate unique sort ordering',                                '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'count',           3, 'int',    false, false, false, 'the number of times this other resource uses the certificate',            '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'display',         4, 'string', false, false, false, 'a short display value, which will often follow the count when displayed', '1.81.16', null);

\echo ssl_certificates
select "schema".add_column('ssl_certificates', 'pkey',         0, 'pkey',  false,  true, false, 'a generated primary key',                                    '1.81.10', null);
select "schema".add_column('ssl_certificates', 'ao_server',    1, 'fkey',  false, false, false, 'the pkey of the server the SSL certificate is on',           '1.81.10', null);
select "schema".add_column('ssl_certificates', 'package',      2, 'fkey',  false, false, false, 'the package that owns the SSL certificate',                  '1.81.10', null);
select "schema".add_column('ssl_certificates', 'key_file',     3, 'path',  false, false, false, 'the file holding the private key',                           '1.81.10', null);
select "schema".add_column('ssl_certificates', 'csr_file',     4, 'path',   true, false, false, 'the file holding the CSR',                                   '1.81.10', null);
select "schema".add_column('ssl_certificates', 'cert_file',    5, 'path',  false, false, false, 'the file holding the public key',                            '1.81.10', null);
select "schema".add_column('ssl_certificates', 'chain_file',   6, 'path',   true, false, false, 'the file holding the CA chain',                              '1.81.10', null);
select "schema".add_column('ssl_certificates', 'certbot_name', 7, 'string', true, false, false, 'the name of the certbot-managed Let''s Encrypt certificate', '1.81.10', null);

\echo system_email_aliases
select "schema".add_column('system_email_aliases', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server the entry is on', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'address', 2, 'string', false, false, false, 'the address (username only) to match', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'destination', 3, 'string', false, false, false, 'the destination, as found in /etc/aliases', '1.0a100', null);

\echo technologies
select "schema".add_column('technologies', 'pkey', 0, 'pkey', false, true, true, 'the unique identifier', '1.4', null);
select "schema".add_column('technologies', 'name', 1, 'string', false, false, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('technologies', 'class', 2, 'string', false, false, true, 'the name of the group this package belongs to', '1.0a100', null);

\echo technology_classes
select "schema".add_column('technology_classes', 'name', 0, 'string', false, true, true, 'the name of the class', '1.0a100', null);
select "schema".add_column('technology_classes', 'description', 1, 'string', false, false, true, 'a description of the class', '1.0a100', null);

\echo technology_names
select "schema".add_column('technology_names', 'name', 0, 'string', false, true, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('technology_names', 'image_filename', 1, 'string', true, false, true, 'the name of the file containing the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_width', 2, 'int', true, false, true, 'the width of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_height', 3, 'int', true, false, true, 'the height of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_alt', 4, 'string', true, false, true, 'the alt attribute of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'home_page_url', 5, 'url', true, false, true, 'the URL of the technology home page', '1.0a100', null);

\echo technology_versions
select "schema".add_column('technology_versions', 'pkey', 0, 'pkey', false, true, true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('technology_versions', 'name', 1, 'string', false, false, true, 'the name of the software package', '1.0a100', null);
select "schema".add_column('technology_versions', 'version', 2, 'string', false, false, true, 'the version number of the package in #.##.##-## format', '1.0a100', null);
select "schema".add_column('technology_versions', 'updated', 3, 'time', false, false, true, 'the time this package was last updated', '1.0a100', null);
select "schema".add_column('technology_versions', 'owner', 4, 'username', false, false, false, 'the business_administrator who is responsible for maintaining this package', '1.0a100', null);
select "schema".add_column('technology_versions', 'operating_system_version', 5, 'fkey', true, false, true, 'the version of the OS that this packages is installed', '1.0a108', null);
select "schema".add_column('technology_versions', 'disable_time', 6, 'time', true, false, true, 'the time this version is no longer supported', '1.78', null);
select "schema".add_column('technology_versions', 'disable_reason', 7, 'string', true, false, true, 'the reason this version is no longer supported', '1.78', null);

\echo ticket_action_types
select "schema".add_column('ticket_action_types', 'type', 0, 'string', false, true, true, '', '1.44', null);
select "schema".add_column('ticket_action_types', 'visible_admin_only', 1, 'boolean', false, false, true, '', '1.44', null);

\echo ticket_actions
select "schema".add_column('ticket_actions', 'pkey',             0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'ticket',           1, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'administrator',    2, 'username', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'time',             3, 'time', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'action_type',      4, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_accounting',   5, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('ticket_actions', 'old_accounting',   6, 'accounting', true, false, false, '', '1.69', null);
select "schema".add_column('ticket_actions', 'new_accounting',   7, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('ticket_actions', 'new_accounting',   8, 'accounting', true, false, false, '', '1.69', null);
select "schema".add_column('ticket_actions', 'old_priority',     9, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_priority',    10, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_type',        11, 'string', true, false, false, '', '1.49', null);
select "schema".add_column('ticket_actions', 'new_type',        12, 'string', true, false, false, '', '1.49', null);
select "schema".add_column('ticket_actions', 'old_status',      13, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_status',      14, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_assigned_to', 15, 'string', true, false, false, '', '1.44', '1.80');
select "schema".add_column('ticket_actions', 'old_assigned_to', 16, 'username', true, false, false, '', '1.80.0', null);
select "schema".add_column('ticket_actions', 'new_assigned_to', 17, 'string', true, false, false, '', '1.44', '1.80');
select "schema".add_column('ticket_actions', 'new_assigned_to', 18, 'username', true, false, false, '', '1.80.0', null);
select "schema".add_column('ticket_actions', 'old_category',    19, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_category',    20, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_value',       21, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_value',       22, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'from_address',    23, 'email', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'summary',         24, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'details',         25, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'raw_email',       26, 'string', true, false, false, '', '1.44', null);

\echo ticket_assignments
select "schema".add_column('ticket_assignments', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'ticket', 1, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'reseller', 2, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'administrator', 3, 'username', false, false, false, '', '1.44', null);

\echo ticket_brand_categories
select "schema".add_column('ticket_brand_categories', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'brand', 1, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'category', 2, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'enabled', 3, 'boolean', false, false, false, '', '1.44', null);

\echo ticket_categories
select "schema".add_column('ticket_categories', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_categories', 'parent', 1, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_categories', 'name', 2, 'string', false, false, false, '', '1.44', null);

\echo ticket_priorities
select "schema".add_column('ticket_priorities', 'priority', 0, 'string', false, true, true, '', '1.0a100', null);

\echo ticket_stati
select "schema".add_column('ticket_stati', 'status', 0, 'string', false, true, true, '', '1.0a100', null);
select "schema".add_column('ticket_stati', 'description', 1, 'string', false, false, true, '', '1.0a100', '1.43');
select "schema".add_column('ticket_stati', 'sort_order', 2, 'short', false, true, true, '', '1.44', null);

\echo ticket_types
select "schema".add_column('ticket_types', 'type', 0, 'string', false, true, true, '', '1.0a100', null);
select "schema".add_column('ticket_types', 'description', 1, 'string', false, false, true, '', '1.0a100', '1.43');
select "schema".add_column('ticket_types', 'client_view', 2, 'boolean', false, false, true, '', '1.0a100', '1.43');

\echo tickets
select "schema".add_column('tickets', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'brand', 1, 'accounting', false, false, false, '', '1.46', null);
select "schema".add_column('tickets', 'reseller', 2, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'package', 3, 'package', false, false, false, '', '1.0a100', '1.0a125');
select "schema".add_column('tickets', 'accounting', 4, 'accounting', true, false, false, '', '1.0a126', null);
select "schema".add_column('tickets', 'language', 5, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'administrator', 6, 'username', false, false, false, '', '1.0a100', '1.0a125');
select "schema".add_column('tickets', 'created_by', 7, 'username', true, false, false, '', '1.0a126', null);
select "schema".add_column('tickets', 'category', 8, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'ticket_type', 9, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'from_address', 10, 'email', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'summary', 11, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'details', 12, 'string', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'details', 13, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'raw_email', 14, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'open_date', 15, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'deadline', 16, 'time', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'close_date', 17, 'time', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'closed_by', 18, 'username', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'client_priority', 19, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'admin_priority', 20, 'string', false, false, false, '', '1.0a100', '1.9');
select "schema".add_column('tickets', 'admin_priority', 21, 'string', true, false, false, '', '1.10', null);
select "schema".add_column('tickets', 'technology', 22, 'string', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'status', 23, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'status_timeout', 24, 'time', true, false, false, '', '1.69', null);
select "schema".add_column('tickets', 'assigned_to', 25, 'string', true, false, false, '', '1.0a125', '1.43');
select "schema".add_column('tickets', 'contact_emails', 26, 'string', false, false, false, '', '1.0a125', null);
select "schema".add_column('tickets', 'contact_phone_numbers', 27, 'string', false, false, false, '', '1.0a125', null);
select "schema".add_column('tickets', 'internal_notes', 28, 'string', false, false, false, '', '1.69', null);

\echo time_zones
select "schema".add_column('time_zones', 'name', 0, 'string', false, true, true, 'The unique name of this time zone', '1.2', null);

\echo transaction_types
select "schema".add_column('transaction_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a123', null);
select "schema".add_column('transaction_types', 'display', 1, 'string', false, false, true, 'the short display value', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'description', 2, 'string', false, false, true, 'a description of the type of payment', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'unit', 3, 'string', false, false, true, 'the unit of the transaction type', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'is_credit', 4, 'boolean', false, false, true, 'indicates that this type of transaction represents payment or credit', '1.0a123', null);

\echo transactions
select "schema".add_column('transactions', 'time', 0, 'time', false, false, false, 'the time the transaction occured', '1.0a100', null);
select "schema".add_column('transactions', 'transid', 1, 'int', false, true, false, 'the unique identifier for this transaction', '1.0a100', '1.68');
select "schema".add_column('transactions', 'transid', 2, 'pkey', false, true, false, 'the unique identifier for this transaction', '1.69', null);
select "schema".add_column('transactions', 'accounting', 3, 'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.0a100', null);
select "schema".add_column('transactions', 'source_accounting', 4, 'accounting', false, false, false, 'the source of the charge to this account', '1.0a100', null);
select "schema".add_column('transactions', 'username', 5, 'username', false, false, false, 'the identifier for the admin involved in the transaction (see business_administrators)', '1.0a100', null);
select "schema".add_column('transactions', 'type', 6, 'string', false, false, false, 'the type of transaction', '1.0a100', null);
select "schema".add_column('transactions', 'description', 7, 'string', false, false, false, 'description of the transaction', '1.0a100', null);
select "schema".add_column('transactions', 'quantity', 8, 'decimal_3', false, false, false, 'the number of times to charge the account', '1.0a100', null);
select "schema".add_column('transactions', 'rate', 9, 'decimal_2', false, false, false, 'the amount per unit of quantity', '1.0a100', null);
select "schema".add_column(
    'transactions',
    'payment_type',
    10,
    'string',
    true,
    false,
    false,
    'the type of payment made<br>
check - check, check number will be in payment_info<br>
money_order - money order<br>
visa - visa card, last four in payment_info<br>
mastercard - mastercard, last four in payment_info<br>
amex - amex card, last four in payment_info<br>
discover - discover card, last four in payment_info',
    '1.0a100',
    null
);
select "schema".add_column('transactions', 'payment_info', 11, 'string', true, false, false, 'the payment info, such as last four of credit card number of check number', '1.0a100', null);
select "schema".add_column('transactions', 'merchant_account', 12, 'string', true, false, false, 'the merchant account that the payment was processed through', '1.0a100', '1.28');
select "schema".add_column('transactions', 'processor', 13, 'string', true, false, false, 'the credit card processor that handled the payment', '1.29', null);
select "schema".add_column('transactions', 'credit_card_transaction', 14, 'fkey', true, false, false, 'the credit card transaction for this transaction', '1.29', null);
select "schema".add_column('transactions', 'apr_num', 15, 'int', true, false, false, 'the approval number for given transaction', '1.0a100', '1.0a127');
select "schema".add_column('transactions', 'apr_num', 16, 'string', true, false, false, 'the approval number for given transaction', '1.0a128', '1.28');
select "schema".add_column(
    'transactions',
    'payment_confirmed',
    17,
    'string',
    false,
    false,
    false,
    '''Y'' if the payment is confirmed<br>
''W'' if waiting confirmation<br>
''N'' if confirmation failed',
    '1.0a100',
    null
);

\echo us_states
select "schema".add_column('us_states', 'code', 0, 'string', false, true, true, 'the two-character code for the state', '1.0a100', null);
select "schema".add_column('us_states', 'name', 1, 'string', false, false, true, 'the name of the state', '1.0a100', null);

\echo usernames
select "schema".add_column('usernames', 'username', 0, 'username', false, true, false, 'the unique username', '1.0a100', null);
select "schema".add_column('usernames', 'package', 1, 'package', false, false, false, 'the package name that this user is part of', '1.0a100', '1.80');
select "schema".add_column('usernames', 'package', 2, 'accounting', false, false, false, 'the package name that this user is part of', '1.80.0', null);
select "schema".add_column('usernames', 'disable_log', 3, 'fkey', true, false, false, 'indicates that the username is disabled', '1.0a100', null);

\echo virtual_disks
select "schema".add_column('virtual_disks', 'pkey', 0, 'pkey', false, true, false, 'a generated unique ID', '1.36', null);
select "schema".add_column('virtual_disks', 'virtual_server', 1, 'fkey', false, false, false, 'the virtual server this disk belongs to', '1.36', null);
select "schema".add_column('virtual_disks', 'device', 2, 'string', false, false, false, 'the per-virtual-server unique device, such as xvda or xvdb', '1.36', null);
select "schema".add_column('virtual_disks', 'minimum_raid_type', 3, 'string', true, false, false, 'the minimum RAID type for the primary physical server', '1.41', '1.41');
select "schema".add_column('virtual_disks', 'primary_minimum_raid_type', 4, 'string', true, false, false, 'the minimum RAID type for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_raid_type', 5, 'string', true, false, false, 'the minimum RAID type for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'minimum_disk_type', 6, 'string', true, false, false, 'the minimum disk type for the primary physical server', '1.41', '1.41');
select "schema".add_column('virtual_disks', 'primary_minimum_disk_type', 7, 'string', true, false, false, 'the minimum disk type for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_disk_type', 8, 'string', true, false, false, 'the minimum disk type for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'minimum_disk_speed', 9, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.41', null);
select "schema".add_column('virtual_disks', 'minimum_disk_speed_target', 10, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.43', null);
select "schema".add_column('virtual_disks', 'primary_minimum_disk_speed', 11, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_disk_speed', 12, 'int', true, false, false, 'the minimum disk speed in RPM for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'extents', 13, 'int', false, false, false, 'the total number of LVM extents for this device', '1.36', null);
select "schema".add_column('virtual_disks', 'weight', 14, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.41', null);
select "schema".add_column('virtual_disks', 'weight_target', 15, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.43', null);
select "schema".add_column('virtual_disks', 'primary_weight', 16, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_weight', 17, 'short', false, false, false, 'the amount of secondary disk I/O allocated to this virtual device on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'primary_physical_volumes_locked', 18, 'boolean', false, false, false, 'indicates this device is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_disks', 'secondary_physical_volumes_locked', 19, 'boolean', false, false, false, 'indicates this device is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_disks', 'verify_day_of_week', 20, 'int', false, false, false, 'the day of the week verification will begin', '1.72', null);
select "schema".add_column('virtual_disks', 'verify_hour_of_day', 21, 'int', false, false, false, 'the hour of day verification will begin', '1.72', null);

\echo virtual_servers
select "schema".add_column('virtual_servers', 'server', 0, 'fkey', false, true, false, 'the server that is virtualized', '1.36', null);
select "schema".add_column('virtual_servers', 'primary_ram', 1, 'int', false, false, false, 'the amount of RAM required in primary mode in megabytes', '1.36', null);
select "schema".add_column('virtual_servers', 'primary_ram_target', 2, 'int', false, false, false, 'the amount of RAM required in primary mode in megabytes', '1.43', null);
select "schema".add_column('virtual_servers', 'secondary_ram', 3, 'int', true, false, false, 'the amount of RAM required in primary mode in megabytes or 0 if secondary not required', '1.36', null);
select "schema".add_column('virtual_servers', 'secondary_ram_target', 4, 'int', true, false, false, 'the amount of RAM required in primary mode in megabytes or 0 if secondary not required', '1.43', null);
select "schema".add_column('virtual_servers', 'minimum_processor_type', 5, 'string', true, false, false, 'the minimum processor type', '1.41', null);
select "schema".add_column('virtual_servers', 'primary_minimum_processor_type', 6, 'string', true, false, false, 'the minimum processor type in primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_minimum_processor_type', 7, 'string', true, false, false, 'the minimum processor type in secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'minimum_processor_architecture', 8, 'string', false, false, false, 'the minimum processor architecture, compatible architectures may be substituted', '1.36', null);
select "schema".add_column('virtual_servers', 'minimum_processor_speed', 9, 'int', true, false, false, 'the minimum processor speed in MHz', '1.41', null);
select "schema".add_column('virtual_servers', 'minimum_processor_speed_target', 10, 'int', true, false, false, 'the minimum processor speed in MHz', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_minimum_processor_speed', 11, 'int', true, false, false, 'the minimum processor speed in MHz for primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_minimum_processor_speed', 12, 'int', true, false, false, 'the minimum processor speed in MHz for secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'processor_cores', 13, 'short', false, false, false, 'the number of processor cores', '1.41', null);
select "schema".add_column('virtual_servers', 'processor_cores_target', 14, 'short', false, false, false, 'the number of processor cores', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_processor_cores', 15, 'short', false, false, false, 'the number of processor cores used in primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_processor_cores', 16, 'short', true, false, false, 'the number of processor cores used in secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'processor_weight', 17, 'short', false, false, false, 'the processor allocation weight on a scale of 1-1024', '1.41', null);
select "schema".add_column('virtual_servers', 'processor_weight_target', 18, 'short', false, false, false, 'the processor allocation weight on a scale of 1-1024', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_processor_weight', 19, 'short', false, false, false, 'the processor allocation weight in primary mode on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_processor_weight', 20, 'short', true, false, false, 'the processor allocation weight in secondary mode on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'primary_physical_server', 21, 'fkey', false, false, false, 'the physical server that provides the primary mode resources', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'primary_physical_server_locked', 22, 'boolean', false, false, false, 'indicates the primary server is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_servers', 'secondary_physical_server', 23, 'fkey', false, false, false, 'the physical server that provides the secondary mode resources', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_physical_server_locked', 24, 'boolean', false, false, false, 'indicates the secondary server is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_servers', 'requires_hvm', 25, 'boolean', false, false, false, 'indicates requires full hardware virtualization', '1.37', null);
select "schema".add_column('virtual_servers', 'vnc_password', 26, 'string', false, true, false, 'the password for VNC console access or null to disable VNC access', '1.51', null);

\echo whois_history
select "schema".add_column('whois_history', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated identifier', '1.20', null);
select "schema".add_column('whois_history', 'time', 1, 'time', false, false, false, 'the time the whois query was performed', '1.20', null);
select "schema".add_column('whois_history', 'accounting', 2, 'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.20', null);
select "schema".add_column('whois_history', 'zone', 3, 'zone', false, false, false, 'the top level domain (zone) that was queried', '1.20', null);
select "schema".add_column('whois_history', 'whois_output', 4, 'string', false, false, false, 'the output from the whois lookup', '1.20', null);
