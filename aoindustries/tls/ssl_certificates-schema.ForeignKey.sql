select "schema".add_foreign_key('tls', 'ssl_certificates', 'ao_server', 'public', 'ao_servers', 'server', '1.81.10', null);
select "schema".add_foreign_key('tls', 'ssl_certificates', 'package',   'public', 'packages',   'pkey',   '1.81.10', null);
