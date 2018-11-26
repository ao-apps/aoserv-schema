alter table "web/tomcat"."ContextDataSource"
  add constraint httpd_tomcat_data_sources_fkey
  foreign key (tomcat_context)
  references "web/tomcat"."Context" (id)
  on delete restrict
  on update cascade
;
