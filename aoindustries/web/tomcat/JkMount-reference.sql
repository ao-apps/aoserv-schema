alter table "web/tomcat"."JkMount"
  add constraint httpd_tomcat_site_fkey
  foreign key (httpd_tomcat_site)
  references "web/tomcat"."TomcatSite" (httpd_site)
  on delete cascade
  on update cascade
;
