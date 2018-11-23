alter table web."JbossVersion"
  add constraint version_fkey
  foreign key (version)
  references distribution."SoftwareVersion" (pkey)
  on delete restrict
  on update cascade
;
alter table web."JbossVersion"
  add constraint tomcat_version_fkey
  foreign key (tomcat_version)
  references web."TomcatVersion" (version)
  on delete restrict
  on update cascade
;
