alter table web."TomcatSite"
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references web."Site" (pkey)
  on delete restrict
  on update cascade
;
alter table web."TomcatSite"
  add constraint version_fkey
  foreign key (version)
  references httpd_tomcat_versions (version)
  on delete restrict
  on update cascade
;
