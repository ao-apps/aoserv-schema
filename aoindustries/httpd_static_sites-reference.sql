alter table httpd_static_sites
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references httpd_sites (ao_server_resource)
  on delete restrict
  on update cascade
;
