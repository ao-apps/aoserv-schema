alter table "web/tomcat"."Version"
  add constraint version_fkey
  foreign key (version)
  references distribution."SoftwareVersion" (id)
  on delete restrict
  on update cascade
;
