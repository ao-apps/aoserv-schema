alter table httpd_site_bind_headers
  add constraint httpd_site_bind_fkey
  foreign key (httpd_site_bind)
  references web."VirtualHost" (pkey)
  on delete cascade
  on update cascade
;
