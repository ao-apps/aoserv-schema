alter table web."TomcatContextParameter"
  add constraint tomcat_context_fkey
  foreign key (tomcat_context)
  references httpd_tomcat_contexts (pkey)
  on delete restrict
  on update cascade
;
