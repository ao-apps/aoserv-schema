create sequence httpd_tomcat_contexts_pkey_seq cycle;
grant all            on httpd_tomcat_contexts_pkey_seq to aoadmin;
grant select, update on httpd_tomcat_contexts_pkey_seq to aoserv_app;

create table httpd_tomcat_contexts (
  pkey integer
    default nextval('httpd_tomcat_contexts_pkey_seq')
    constraint httpd_tomcat_contexts_pkey primary key,
  tomcat_site integer
    not null,
  class_name text,
  cookies bool
    not null,
  cross_context bool
    not null,
  doc_base text
    not null,
  override bool
    not null,
  "path" text
    not null,
  privileged bool
    not null,
  reloadable bool
    not null,
  use_naming bool
    not null,
  wrapper_class text,
  debug integer
    not null,
  work_dir text,
  server_xml_configured bool
    not null,
  unique(tomcat_site, "path")
);
grant all                            on httpd_tomcat_contexts to aoadmin;
grant select, insert, update, delete on httpd_tomcat_contexts to aoserv_app;
