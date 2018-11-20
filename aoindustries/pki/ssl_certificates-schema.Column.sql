select "schema".add_column('pki', 'ssl_certificates', 'pkey',         'pkey',  false,  true, false, 'a generated primary key',                                    '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'ao_server',    'fkey',  false, false, false, 'the pkey of the server the SSL certificate is on',           '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'package',      'fkey',  false, false, false, 'the package that owns the SSL certificate',                  '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'key_file',     'path',  false, false, false, 'the file holding the private key',                           '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'csr_file',     'path',   true, false, false, 'the file holding the CSR',                                   '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'cert_file',    'path',  false, false, false, 'the file holding the public key',                            '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'chain_file',   'path',   true, false, false, 'the file holding the CA chain',                              '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'certbot_name', 'string', true, false, false, 'the name of the certbot-managed Let''s Encrypt certificate', '1.81.10', null);
