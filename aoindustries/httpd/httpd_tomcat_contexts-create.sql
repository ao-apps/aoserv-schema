create sequence         httpd.httpd_tomcat_contexts_pkey_seq cycle;
grant all            on httpd.httpd_tomcat_contexts_pkey_seq to aoadmin;
grant select, update on httpd.httpd_tomcat_contexts_pkey_seq to aoserv_app;

create table httpd_tomcat_contexts (
  pkey integer
    default nextval('httpd.httpd_tomcat_contexts_pkey_seq')
    primary key,
  tomcat_site integer
    not null,
  class_name text,
  cookies boolean
    not null,
  cross_context boolean
    not null,
  doc_base text
    not null,
  override boolean
    not null,
  "path" text
    not null,
  privileged boolean
    not null,
  reloadable boolean
    not null,
  use_naming boolean
    not null,
  wrapper_class text,
  debug integer
    not null,
  work_dir text,
  server_xml_configured boolean
    not null,
  unique(tomcat_site, "path")
);
grant all                            on httpd_tomcat_contexts to aoadmin;
grant select, insert, update, delete on httpd_tomcat_contexts to aoserv_app;
