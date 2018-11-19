select "schema".add_foreign_key('cyrus_imapd_servers', 'ao_server', 'ao_servers', 'server', '1.81.10', null);
select "schema".add_foreign_key('cyrus_imapd_servers', 'sieve_net_bind', 'net_binds', 'pkey', '1.81.10', null);
select "schema".add_foreign_key('cyrus_imapd_servers', 'certificate', 'ssl_certificates', 'pkey', '1.81.10', null);
