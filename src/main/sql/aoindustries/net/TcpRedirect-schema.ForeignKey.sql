select "schema".add_foreign_key('net', 'net_tcp_redirects', 'net_bind',         'net', 'net_binds', 'pkey', '1.0a111', '1.68');
select "schema".add_foreign_key('net', 'net_tcp_redirects', 'net_bind',         'net', 'net_binds', 'pkey', '1.69',    '1.81.17');
select "schema".add_foreign_key('net', 'net_tcp_redirects', 'net_bind',         'net', 'net_binds', 'id',   '1.81.18', null);
select "schema".add_foreign_key('net', 'net_tcp_redirects', 'destination_port', 'net', 'net_ports', 'port', '1.0a111', '1.68');
select "schema".add_foreign_key('net', 'net_tcp_redirects', 'destination_port', 'net', 'net_ports', 'port', '1.69',    '1.80');
