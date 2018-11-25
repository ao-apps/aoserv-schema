alter table "web/tomcat"."SharedTomcatSite"
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references "web/tomcat"."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."SharedTomcatSite"
  add constraint httpd_shared_tomcat_fkey
  foreign key (httpd_shared_tomcat)
  references "web/tomcat"."SharedTomcat" (pkey)
  on delete restrict
  on update cascade
;
