select "schema".add_column('httpd', 'httpd_workers', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_workers', 'code', 1, 'string', false, false, false, 'the jk_code for the worker', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_workers', 'net_bind', 2, 'fkey', false, true, false, 'the network binding reservation and details', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_workers', 'tomcat_site', 3, 'fkey', true, false, false, 'the site that provides this workers (Tomcat 3 only)', '1.0a100', null);
