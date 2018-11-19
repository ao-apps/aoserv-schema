select "schema".add_foreign_key('net_tcp_redirects', 'net_bind', 'net_binds', 'pkey', '1.0a111', '1.68');
select "schema".add_foreign_key('net_tcp_redirects', 'net_bind', 'net_binds', 'pkey', '1.69', null);
select "schema".add_foreign_key('net_tcp_redirects', 'destination_port', 'net_ports', 'port', '1.0a111', '1.68');
select "schema".add_foreign_key('net_tcp_redirects', 'destination_port', 'net_ports', 'port', '1.69', '1.80');
