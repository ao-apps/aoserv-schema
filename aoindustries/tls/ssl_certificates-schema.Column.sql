select "schema".add_column('tls', 'ssl_certificates', 'pkey',         0, 'pkey',  false,  true, false, 'a generated primary key',                                    '1.81.10', null);
select "schema".add_column('tls', 'ssl_certificates', 'ao_server',    1, 'fkey',  false, false, false, 'the pkey of the server the SSL certificate is on',           '1.81.10', null);
select "schema".add_column('tls', 'ssl_certificates', 'package',      2, 'fkey',  false, false, false, 'the package that owns the SSL certificate',                  '1.81.10', null);
select "schema".add_column('tls', 'ssl_certificates', 'key_file',     3, 'path',  false, false, false, 'the file holding the private key',                           '1.81.10', null);
select "schema".add_column('tls', 'ssl_certificates', 'csr_file',     4, 'path',   true, false, false, 'the file holding the CSR',                                   '1.81.10', null);
select "schema".add_column('tls', 'ssl_certificates', 'cert_file',    5, 'path',  false, false, false, 'the file holding the public key',                            '1.81.10', null);
select "schema".add_column('tls', 'ssl_certificates', 'chain_file',   6, 'path',   true, false, false, 'the file holding the CA chain',                              '1.81.10', null);
select "schema".add_column('tls', 'ssl_certificates', 'certbot_name', 7, 'string', true, false, false, 'the name of the certbot-managed Let''s Encrypt certificate', '1.81.10', null);
