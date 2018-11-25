alter table "web/tomcat"."ContextParameter"
  add constraint tomcat_context_fkey
  foreign key (tomcat_context)
  references "web/tomcat"."Context" (pkey)
  on delete restrict
  on update cascade
;
