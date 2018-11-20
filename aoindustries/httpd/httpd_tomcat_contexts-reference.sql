alter table httpd_tomcat_contexts
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references httpd_tomcat_sites (httpd_site)
  on delete restrict
  on update cascade
;
