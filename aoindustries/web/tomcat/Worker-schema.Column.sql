select "schema".add_column('web.tomcat', 'httpd_workers', 'pkey',        'pkey',   false,  true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_workers', 'code',        'string', false, false, false, 'the jk_code for the worker', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_workers', 'net_bind',    'fkey',   false,  true, false, 'the network binding reservation and details', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_workers', 'tomcat_site', 'fkey',    true, false, false, 'the site that provides this workers (Tomcat 3 only)', '1.0a100', null);
