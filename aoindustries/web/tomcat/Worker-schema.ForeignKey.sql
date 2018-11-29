select "schema".add_foreign_key('web.tomcat', 'httpd_workers', 'bind',        'net',        'net_binds',          'id',         '1.81.18', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_workers', 'code',        'web.tomcat', 'httpd_jk_codes',     'code',       '1.0a100', '1.81.17');
select "schema".add_foreign_key('web.tomcat', 'httpd_workers', 'name',        'web.tomcat', 'httpd_jk_codes',     'code',       '1.81.18', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_workers', 'net_bind',    'net',        'net_binds',          'pkey',       '1.0a100', '1.81.17');
select "schema".add_foreign_key('web.tomcat', 'httpd_workers', 'tomcat_site', 'web.tomcat', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', '1.81.17');
select "schema".add_foreign_key('web.tomcat', 'httpd_workers', 'tomcatSite',  'web.tomcat', 'httpd_tomcat_sites', 'httpd_site', '1.81.18', null);
