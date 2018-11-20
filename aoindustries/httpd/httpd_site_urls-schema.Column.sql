select "schema".add_column('httpd', 'httpd_site_urls', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_site_urls', 'httpd_site_bind', 1, 'fkey', false, false, false, 'the site that is being referenced', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_site_urls', 'hostname', 2, 'hostname', false, false, false, 'the hostname that this site responds to', '1.0a100', '1.68');
select "schema".add_column('httpd', 'httpd_site_urls', 'hostname', 3, 'domain_name', false, false, false, 'the hostname that this site responds to', '1.69', null);
select "schema".add_column(
    'httpd',
    'httpd_site_urls',
    'is_primary',
    4,
    'boolean',
    false,
    false,
    false,
    'flags if this is the primary hostname for a site.
A site must have one and only one primary hostname
at a time.  This constraint is implemented by the
application code.',
    '1.0a100',
    null
);
