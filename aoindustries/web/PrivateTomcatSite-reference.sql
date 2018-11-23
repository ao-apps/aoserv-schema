alter table web."PrivateTomcatSite"
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references web."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
alter table web."PrivateTomcatSite"
  add constraint tomcat4_shutdown_port_fkey
  foreign key (tomcat4_shutdown_port)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
