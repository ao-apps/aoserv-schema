alter table httpd_tomcat_sites
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references httpd_sites (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_tomcat_sites
  add constraint version_fkey
  foreign key (version)
  references httpd_tomcat_versions (version)
  on delete restrict
  on update cascade
;
