select "schema".add_foreign_key('sendmail_binds', 'net_bind', 'net_binds', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_binds', 'sendmail_server', 'sendmail_servers', 'pkey', '1.81.10', null);
