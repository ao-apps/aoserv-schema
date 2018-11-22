alter table httpd_tomcat_site_jk_mounts
  add constraint httpd_tomcat_site_fkey
  foreign key (httpd_tomcat_site)
  references httpd_tomcat_sites (httpd_site)
  on delete cascade
  on update cascade
;
