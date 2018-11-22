alter table web."TomcatContextParameter"
  add constraint tomcat_context_fkey
  foreign key (tomcat_context)
  references web."TomcatContext" (pkey)
  on delete restrict
  on update cascade
;
