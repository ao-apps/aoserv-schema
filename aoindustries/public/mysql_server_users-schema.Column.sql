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
