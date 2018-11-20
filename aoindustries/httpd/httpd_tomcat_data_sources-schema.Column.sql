select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'pkey',              'pkey',   false,  true, false, 'a generated unique key', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'tomcat_context',    'fkey',   false, false, false, 'the context this data source is for', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'name',              'string', false, false, false, 'the JNDI name', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'driver_class_name', 'string', false, false, false, 'fully qualified Java class name of the JDBC driver to be used', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'url',               'string', false, false, false, 'connection URL to be passed to our JDBC driver', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'username',          'string', false, false, false, 'database username to be passed to our JDBC driver', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'password',          'string', false, false, false, 'database password to be passed to our JDBC driver', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'max_active',        'int',    false, false, false, 'the maximum number of active instances that can be allocated from this pool at the same time', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'max_idle',          'int',    false, false, false, 'the maximum number of connections that can sit idle in this pool at the same time', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'max_wait',          'int',    false, false, false, 'the maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception', '1.5', null);
select "schema".add_column('httpd', 'httpd_tomcat_data_sources', 'validation_query',  'string',  true, false, false, 'SQL query that can be used by the pool to validate connections before they are returned to the application.  If specified, this query MUST be an SQL SELECT statement that returns at least one row.', '1.5', null);
