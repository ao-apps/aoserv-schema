select "schema".add_foreign_key('pki', 'ssl_certificates', 'ao_server', 'server',  'ao_servers', 'server', '1.81.10', null);
select "schema".add_foreign_key('pki', 'ssl_certificates', 'package',   'billing', 'packages',   'pkey',   '1.81.10', null);
