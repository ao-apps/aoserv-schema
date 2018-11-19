select "schema".add_foreign_key('ssl_certificates', 'ao_server', 'ao_servers', 'server', '1.81.10', null);
select "schema".add_foreign_key('ssl_certificates', 'package', 'packages', 'pkey', '1.81.10', null);
