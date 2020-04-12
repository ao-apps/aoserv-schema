select "schema".add_column('web', 'httpd_site_urls', 'pkey',            'pkey',        false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('web', 'httpd_site_urls', 'httpd_site_bind', 'fkey',        false, false, false, 'the site that is being referenced', '1.0a100', null);
select "schema".add_column('web', 'httpd_site_urls', 'hostname',        'hostname',    false, false, false, 'the hostname that this site responds to', '1.0a100', '1.68');
select "schema".add_column('web', 'httpd_site_urls', 'hostname',        'domain_name', false, false, false, 'the hostname that this site responds to', '1.69', null);
select "schema".add_column('web', 'httpd_site_urls', 'is_primary',      'boolean',     false, false, false, E'flags if this is the primary hostname for a site.\nA site must have one and only one primary hostname\nat a time.  This constraint is implemented by the\napplication code.', '1.0a100', null);
