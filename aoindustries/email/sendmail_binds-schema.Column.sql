select "schema".add_column('email', 'sendmail_binds', 'net_bind',        'fkey',   false,  true, false, 'the IP address, port, and protocol details',   '1.81.10', null);
select "schema".add_column('email', 'sendmail_binds', 'sendmail_server', 'fkey',   false, false, false, 'the server that is listening on the address',  '1.81.10', null);
select "schema".add_column('email', 'sendmail_binds', 'servername',      'string',  true, false, false, 'the Name for DaemonPortOptions for this bind', '1.81.10', null);
