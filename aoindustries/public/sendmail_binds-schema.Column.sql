select "schema".add_column('sendmail_binds', 'net_bind',        0, 'fkey',   false,  true, false, 'the IP address, port, and protocol details',   '1.81.10', null);
select "schema".add_column('sendmail_binds', 'sendmail_server', 1, 'fkey',   false, false, false, 'the server that is listening on the address',  '1.81.10', null);
select "schema".add_column('sendmail_binds', 'servername',      2, 'string',  true, false, false, 'the Name for DaemonPortOptions for this bind', '1.81.10', null);
