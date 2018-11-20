select "schema".add_foreign_key('email', 'cyrus_imapd_binds', 'net_bind',           'net', 'net_binds',           'pkey',      '1.81.10', null);
select "schema".add_foreign_key('email', 'cyrus_imapd_binds', 'cyrus_imapd_server',        'cyrus_imapd_servers', 'ao_server', '1.81.10', null);
select "schema".add_foreign_key('email', 'cyrus_imapd_binds', 'certificate',        'tls', 'ssl_certificates',    'pkey',      '1.81.10', null);
