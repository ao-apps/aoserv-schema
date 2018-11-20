alter table httpd_tomcat_data_sources
  add constraint httpd_tomcat_data_sources_fkey
  foreign key (tomcat_context)
  references httpd_tomcat_contexts (pkey)
  on delete restrict
  on update cascade
;
