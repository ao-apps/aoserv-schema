select "schema".add_column('httpd_binds', 'net_bind', 0, 'fkey', false, true, false, 'the IP address, port, and protocol details', '1.0a100', null);
select "schema".add_column('httpd_binds', 'httpd_server', 1, 'fkey', false, false, false, 'the server that is listening on the address', '1.0a100', null);
