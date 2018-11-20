select "schema".add_column('httpd', 'httpd_site_bind_redirects', 'pkey',            0, 'pkey',    false,  true, false, 'a generated primary key',                     '1.81.1', null);
select "schema".add_column('httpd', 'httpd_site_bind_redirects', 'httpd_site_bind', 1, 'fkey',    false, false, false, 'the site bind that is being referenced',      '1.81.1', null);
select "schema".add_column('httpd', 'httpd_site_bind_redirects', 'sort_order',      2, 'short',   false, false, false, 'the per-bind unique sort ordering',           '1.81.1', null);
select "schema".add_column('httpd', 'httpd_site_bind_redirects', 'pattern',         3, 'string',  false, false, false, 'the per-bind unique pattern matched',         '1.81.1', null);
select "schema".add_column('httpd', 'httpd_site_bind_redirects', 'substitution',    4, 'string',  false, false, false, 'the redirect substitution',                   '1.81.1', null);
select "schema".add_column('httpd', 'httpd_site_bind_redirects', 'comment',         5, 'string',   true, false, false, 'an optional comment describing the redirect', '1.81.1', null);
select "schema".add_column('httpd', 'httpd_site_bind_redirects', 'no_escape',       6, 'boolean', false, false, false, 'enables the [NE] RewriteRule Flag',           '1.81.4', null);
