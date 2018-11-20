select "schema".add_foreign_key('email', 'sendmail_servers', 'ao_server',          'public', 'ao_servers',       'server', '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'package',            'public', 'packages',         'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'server_certificate', 'tls',    'ssl_certificates', 'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_certificate', 'tls',    'ssl_certificates', 'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_addr_inet',   'net',    'ip_addresses',     'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_addr_inet6',  'net',    'ip_addresses',     'pkey',   '1.81.10', null);
