select "schema".add_foreign_key('email', 'sendmail_binds', 'net_bind',        'public', 'net_binds',        'pkey', '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_binds', 'sendmail_server',           'sendmail_servers', 'pkey', '1.81.10', null);
