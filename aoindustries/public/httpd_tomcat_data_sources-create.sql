create sequence httpd_tomcat_data_sources_pkey_seq cycle;
grant all on httpd_tomcat_data_sources_pkey_seq to aoadmin;
grant select, update on httpd_tomcat_data_sources_pkey_seq to aoserv_app;

create table httpd_tomcat_data_sources (
  pkey integer
    default nextval('httpd_tomcat_data_sources_pkey_seq')
    constraint httpd_tomcat_data_sources_pkey primary key,
  tomcat_context integer
    not null,
  name text
    not null,
  driver_class_name text
    not null,
  url text
    not null,
  username text
    not null,
  password text
    not null,
  max_active integer
    not null,
  max_idle integer
    not null,
  max_wait integer
    not null,
  validation_query text,
  unique(tomcat_context, name)
);
grant all on httpd_tomcat_data_sources to aoadmin;
grant select, insert, update, delete on httpd_tomcat_data_sources to aoserv_app;
