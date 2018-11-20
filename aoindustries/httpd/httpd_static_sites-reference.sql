alter table httpd_static_sites
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references httpd_sites (pkey)
  on delete restrict
  on update cascade
;
