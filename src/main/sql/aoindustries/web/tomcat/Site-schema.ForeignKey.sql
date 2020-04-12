select "schema".add_foreign_key('web.tomcat', 'httpd_tomcat_sites', 'httpd_site', 'web',        'httpd_sites',           'pkey',    '1.0a100', '1.81.17');
select "schema".add_foreign_key('web.tomcat', 'httpd_tomcat_sites', 'httpd_site', 'web',        'httpd_sites',           'id',      '1.81.18', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_tomcat_sites', 'version',    'web.tomcat', 'httpd_tomcat_versions', 'version', '1.0a100', null);
