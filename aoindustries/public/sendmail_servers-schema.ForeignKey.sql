select "schema".add_foreign_key('sendmail_servers', 'ao_server', 'ao_servers', 'server', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'package', 'packages', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'server_certificate', 'ssl_certificates', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'client_certificate', 'ssl_certificates', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'client_addr_inet', 'ip_addresses', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('sendmail_servers', 'client_addr_inet6', 'ip_addresses', 'pkey', '1.81.10', null);
