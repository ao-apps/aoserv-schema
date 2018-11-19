select "schema".add_column('cyrus_imapd_binds', 'net_bind',             0, 'fkey',        false,  true, false, 'the IP address, port, and protocol details',                     '1.81.10', null);
select "schema".add_column('cyrus_imapd_binds', 'cyrus_imapd_server',   1, 'fkey',        false, false, false, 'the server that is listening on the address',                    '1.81.10', null);
select "schema".add_column('cyrus_imapd_binds', 'servername',           2, 'domain_name',  true, false, false, 'the servername for this bind',                                   '1.81.10', null);
select "schema".add_column('cyrus_imapd_binds', 'certificate',          3, 'fkey',         true, false, false, 'the certificate used by this bind',                              '1.81.10', null);
select "schema".add_column('cyrus_imapd_binds', 'allow_plaintext_auth', 4, 'boolean',      true, false, false, 'allows plaintext authentication (PLAIN/LOGIN) on non-TLS links', '1.81.10', null);
