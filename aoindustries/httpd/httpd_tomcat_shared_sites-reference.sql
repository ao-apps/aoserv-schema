alter table httpd_tomcat_shared_sites
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references httpd_tomcat_sites (httpd_site)
  on delete restrict
  on update cascade
;
alter table httpd_tomcat_shared_sites
  add constraint httpd_shared_tomcat_fkey
  foreign key (httpd_shared_tomcat)
  references httpd_shared_tomcats (pkey)
  on delete restrict
  on update cascade
;
