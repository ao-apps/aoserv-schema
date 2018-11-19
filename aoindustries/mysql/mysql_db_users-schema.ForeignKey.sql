select "schema".add_foreign_key('mysql', 'mysql_db_users', 'mysql_database',    'mysql_databases',    'pkey', '1.0a100', null);
select "schema".add_foreign_key('mysql', 'mysql_db_users', 'mysql_user',        'mysql_server_users', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('mysql', 'mysql_db_users', 'mysql_server_user', 'mysql_server_users', 'pkey', '1.31',    null);
