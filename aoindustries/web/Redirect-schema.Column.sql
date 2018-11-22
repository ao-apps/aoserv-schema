select "schema".add_column('web', 'httpd_site_bind_redirects', 'pkey',            'pkey',    false,  true, false, 'a generated primary key',                     '1.81.1', null);
select "schema".add_column('web', 'httpd_site_bind_redirects', 'httpd_site_bind', 'fkey',    false, false, false, 'the site bind that is being referenced',      '1.81.1', null);
select "schema".add_column('web', 'httpd_site_bind_redirects', 'sort_order',      'short',   false, false, false, 'the per-bind unique sort ordering',           '1.81.1', null);
select "schema".add_column('web', 'httpd_site_bind_redirects', 'pattern',         'string',  false, false, false, 'the per-bind unique pattern matched',         '1.81.1', null);
select "schema".add_column('web', 'httpd_site_bind_redirects', 'substitution',    'string',  false, false, false, 'the redirect substitution',                   '1.81.1', null);
select "schema".add_column('web', 'httpd_site_bind_redirects', 'comment',         'string',   true, false, false, 'an optional comment describing the redirect', '1.81.1', null);
select "schema".add_column('web', 'httpd_site_bind_redirects', 'no_escape',       'boolean', false, false, false, 'enables the [NE] RewriteRule Flag',           '1.81.4', null);
