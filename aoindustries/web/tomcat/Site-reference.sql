alter table "web/tomcat"."Site"
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references web."Site" (id)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."Site"
  add constraint version_fkey
  foreign key (version)
  references "web/tomcat"."Version" (version)
  on delete restrict
  on update cascade
;
