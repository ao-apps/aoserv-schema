select "schema".add_column('httpd', 'httpd_binds', 'net_bind',     'fkey', false,  true, false, 'the IP address, port, and protocol details', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_binds', 'httpd_server', 'fkey', false, false, false, 'the server that is listening on the address', '1.0a100', null);
