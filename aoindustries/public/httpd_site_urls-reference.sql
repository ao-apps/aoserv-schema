alter table httpd_site_urls
  add constraint httpd_site_bind_fkey
  foreign key (httpd_site_bind)
  references httpd_site_binds (pkey)
  on delete restrict
  on update cascade
;
