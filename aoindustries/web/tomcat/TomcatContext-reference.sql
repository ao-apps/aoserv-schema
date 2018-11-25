alter table "web/tomcat"."TomcatContext"
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references "web/tomcat"."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
