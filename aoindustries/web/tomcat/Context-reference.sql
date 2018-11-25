alter table "web/tomcat"."Context"
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references "web/tomcat"."Site" (httpd_site)
  on delete restrict
  on update cascade
;
