select "schema".add_column('net', 'net_tcp_redirects', 'net_bind',                'int',      false,  true, false, 'the pkey as found in net_binds', '1.0a111', '1.68');
select "schema".add_column('net', 'net_tcp_redirects', 'net_bind',                'fkey',     false,  true, false, 'the pkey as found in net_binds', '1.69', null);
select "schema".add_column('net', 'net_tcp_redirects', 'cps',                     'int',      false, false, false, 'the maximum number of connections per second before the redirect is temporarily disabled', '1.0a111', null);
select "schema".add_column('net', 'net_tcp_redirects', 'cps_overload_sleep_time', 'int',      false, false, false, 'the number of seconds the service will be disabled', '1.0a111', null);
select "schema".add_column('net', 'net_tcp_redirects', 'destination_host',        'hostname', false, false, false, 'the destination IP address or hostname, please note that hostnames are only resolved once on xinetd startup', '1.0a111', null);
select "schema".add_column('net', 'net_tcp_redirects', 'destination_port',        'int',      false, false, false, 'the remote port to connect to', '1.0a111', '1.68');
select "schema".add_column('net', 'net_tcp_redirects', 'destination_port',        'fkey',     false, false, false, 'the remote port to connect to', '1.69', '1.80');
select "schema".add_column('net', 'net_tcp_redirects', 'destination_port',        'net_port', false, false, false, 'the remote port to connect to', '1.80.0', null);
