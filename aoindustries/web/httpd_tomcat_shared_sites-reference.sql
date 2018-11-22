alter table httpd_tomcat_shared_sites
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references web."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
alter table httpd_tomcat_shared_sites
  add constraint httpd_shared_tomcat_fkey
  foreign key (httpd_shared_tomcat)
  references web."SharedTomcat" (pkey)
  on delete restrict
  on update cascade
;
