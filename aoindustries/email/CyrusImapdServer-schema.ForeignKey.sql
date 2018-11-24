select "schema".add_foreign_key('email', 'cyrus_imapd_servers', 'ao_server',      'linux', 'ao_servers',       'server', '1.81.10', null);
select "schema".add_foreign_key('email', 'cyrus_imapd_servers', 'sieve_net_bind', 'net',   'net_binds',        'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'cyrus_imapd_servers', 'certificate',    'pki',   'ssl_certificates', 'pkey',   '1.81.10', null);
