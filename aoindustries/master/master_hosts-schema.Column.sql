select "schema".add_column('master', 'master_hosts', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('master', 'master_hosts', 'username', 1, 'username', false, false, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master', 'master_hosts', 'host', 2, 'ip_address', false, false, false, 'the hostname or IP address they are allowed to connect from', '1.0a100', '1.80');
select "schema".add_column('master', 'master_hosts', 'host', 3, 'hostname', false, false, false, 'the hostname or IP address they are allowed to connect from', '1.80.0', null);
