select "schema".add_column('ssl_certificate_names', 'pkey',            0, 'pkey',        false,  true, false, 'a generated primary key',                                      '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'ssl_certificate', 1, 'fkey',        false, false, false, 'the pkey of the SSL certificate this name is on',              '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'is_common_name',  2, 'boolean',     false, false, false, 'indicates this is the Common Name (CN) or a Subject Alt Name', '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'is_wildcard',     3, 'boolean',     false, false, false, 'is a *.(domain) wildcard certificate',                         '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'domain',          4, 'domain_name', false, false, false, 'the domain name',                                              '1.81.10', null);
