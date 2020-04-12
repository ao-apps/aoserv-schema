select "schema".add_column('web', 'httpd_site_bind_redirects', 'pkey',            'pkey',    false,  true, false, 'a generated primary key',                     '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'httpd_site_bind', 'fkey',    false, false, false, 'the site bind that is being referenced',      '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'sort_order',      'short',   false, false, false, 'the per-bind unique sort ordering',           '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'pattern',         'string',  false, false, false, 'the per-bind unique pattern matched',         '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'substitution',    'string',  false, false, false, 'the redirect substitution',                   '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'comment',         'string',   true, false, false, 'an optional comment describing the redirect', '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'no_escape',       'boolean', false, false, false, 'enables the [NE] RewriteRule Flag',           '1.81.4', '1.81.20');

select "schema".add_column('web', 'RewriteRule', 'id',           'pkey',    false,  true, false, 'a generated primary key',                  '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'virtualHost',  'fkey',    false, false, false, 'the VirtualHost this rule is applied to',  '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'sortOrder',    'short',   false, false, false, 'the per-VirtualHost unique sort ordering', '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'pattern',      'string',  false, false, false, 'the per-VirtualHost pattern matched',      '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'substitution', 'string',  false, false, false, 'the rewrite substitution',                 '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'flags',        'string',   true, false, false, 'the optional flags for the rule',          '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'comment',      'string',   true, false, false, 'an optional comment describing the rule',  '1.81.21', null);
