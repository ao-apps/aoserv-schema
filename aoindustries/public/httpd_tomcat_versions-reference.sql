alter table httpd_tomcat_versions
  add constraint version_fkey
  foreign key (version)
  references technology_versions (pkey)
  on delete restrict
  on update cascade
;
