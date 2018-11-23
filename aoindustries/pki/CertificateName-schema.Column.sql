select "schema".add_column('pki', 'ssl_certificate_names', 'pkey',            'pkey',        false,  true, false, 'a generated primary key',                                      '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificate_names', 'ssl_certificate', 'fkey',        false, false, false, 'the pkey of the SSL certificate this name is on',              '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificate_names', 'is_common_name',  'boolean',     false, false, false, 'indicates this is the Common Name (CN) or a Subject Alt Name', '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificate_names', 'is_wildcard',     'boolean',     false, false, false, 'is a *.(domain) wildcard certificate',                         '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificate_names', 'domain',          'domain_name', false, false, false, 'the domain name',                                              '1.81.10', null);
