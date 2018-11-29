select "schema".add_foreign_key('email', 'sendmail_servers', 'ao_server',          'linux',   'ao_servers',       'server', '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'package',            'billing', 'packages',         'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'server_certificate', 'pki',     'ssl_certificates', 'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_certificate', 'pki',     'ssl_certificates', 'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_addr_inet',   'net',     'ip_addresses',     'pkey',   '1.81.10', '1.81.17');
select "schema".add_foreign_key('email', 'sendmail_servers', 'clientAddrInet',     'net',     'ip_addresses',     'id',     '1.81.18', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_addr_inet6',  'net',     'ip_addresses',     'pkey',   '1.81.10', '1.81.17');
select "schema".add_foreign_key('email', 'sendmail_servers', 'clientAddrInet6',    'net',     'ip_addresses',     'id',     '1.81.18', null);
