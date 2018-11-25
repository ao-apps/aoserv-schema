alter table "web/tomcat"."TomcatContextParameter"
  add constraint tomcat_context_fkey
  foreign key (tomcat_context)
  references "web/tomcat"."TomcatContext" (pkey)
  on delete restrict
  on update cascade
;
