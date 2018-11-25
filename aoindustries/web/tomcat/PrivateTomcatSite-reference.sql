alter table "web/tomcat"."PrivateTomcatSite"
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references "web/tomcat"."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."PrivateTomcatSite"
  add constraint tomcat4_shutdown_port_fkey
  foreign key (tomcat4_shutdown_port)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
