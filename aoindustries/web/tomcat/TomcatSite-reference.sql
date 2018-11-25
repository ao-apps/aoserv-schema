alter table "web/tomcat"."TomcatSite"
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references web."Site" (pkey)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."TomcatSite"
  add constraint version_fkey
  foreign key (version)
  references "web/tomcat"."TomcatVersion" (version)
  on delete restrict
  on update cascade
;
