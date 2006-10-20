alter table httpd_site_authenticated_locations
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references httpd_sites (pkey)
  on delete restrict
  on update cascade
;
