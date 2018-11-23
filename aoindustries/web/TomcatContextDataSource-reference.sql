alter table web."TomcatContextDataSource"
  add constraint httpd_tomcat_data_sources_fkey
  foreign key (tomcat_context)
  references web."TomcatContext" (pkey)
  on delete restrict
  on update cascade
;