select "schema".add_foreign_key('web', 'httpd_site_bind_redirects', 'httpd_site_bind', 'web', 'httpd_site_binds', 'pkey', '1.81.1',  '1.81.20');
select "schema".add_foreign_key('web', 'RewriteRule',               'virtualHost',     'web', 'httpd_site_binds', 'pkey', '1.81.21', null);
