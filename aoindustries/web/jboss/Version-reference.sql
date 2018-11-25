alter table "web/jboss"."Version"
  add constraint version_fkey
  foreign key (version)
  references distribution."SoftwareVersion" (pkey)
  on delete restrict
  on update cascade
;
alter table "web/jboss"."Version"
  add constraint tomcat_version_fkey
  foreign key (tomcat_version)
  references "web/tomcat"."Version" (version)
  on delete restrict
  on update cascade
;
