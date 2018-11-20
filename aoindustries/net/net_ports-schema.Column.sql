select "schema".add_column('net', 'net_ports', 'port', 0, 'int', false, true, true, 'the unique port number', '1.0a100', '1.68');
select "schema".add_column('net', 'net_ports', 'port', 1, 'pkey', false, true, true, 'the unique port number', '1.69', '1.80');
select "schema".add_column('net', 'net_ports', 'is_user', 2, 'boolean', false, false, true, 'true if user processes may listen on the port', '1.0a100', '1.80');
