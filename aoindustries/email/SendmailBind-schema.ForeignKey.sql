select "schema".add_foreign_key('email', 'sendmail_binds', 'net_bind',        'net',   'net_binds',        'pkey', '1.81.10', '1.81.17');
select "schema".add_foreign_key('email', 'sendmail_binds', 'net_bind',        'net',   'net_binds',        'id',   '1.81.18', null);
select "schema".add_foreign_key('email', 'sendmail_binds', 'sendmail_server', 'email', 'sendmail_servers', 'pkey', '1.81.10', '1.81.17');
select "schema".add_foreign_key('email', 'sendmail_binds', 'sendmail_server', 'email', 'sendmail_servers', 'id',   '1.81.18', null);
