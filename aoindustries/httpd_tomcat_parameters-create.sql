create sequence httpd_tomcat_parameters_pkey_seq cycle;
grant all on httpd_tomcat_parameters_pkey_seq to aoadmin;
grant select, update on httpd_tomcat_parameters_pkey_seq to aoserv_app;

create table httpd_tomcat_parameters (
  pkey integer
    default nextval('httpd_tomcat_parameters_pkey_seq')
    constraint httpd_tomcat_parameters_pkey primary key,
  tomcat_context integer
    not null,
  name text
    not null,
  value text
    not null,
  override bool
    not null,
  description text,
  unique(tomcat_context, name)
);
grant all on httpd_tomcat_parameters to aoadmin;
grant select, insert, update, delete on httpd_tomcat_parameters to aoserv_app;
