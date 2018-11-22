alter table web."VirtualHostName"
  add constraint httpd_site_bind_fkey
  foreign key (httpd_site_bind)
  references web."VirtualHost" (pkey)
  on delete restrict
  on update cascade
;
