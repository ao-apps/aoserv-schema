alter table web."Redirect"
  add constraint httpd_site_bind_fkey
  foreign key (httpd_site_bind)
  references web."VirtualHost" (id)
  on delete cascade
  on update cascade
;
