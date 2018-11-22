alter table web."VirtualHost"
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references web."Site" (pkey)
  on delete restrict
  on update cascade
;
alter table web."VirtualHost"
  add constraint httpd_bind_fkey
  foreign key (httpd_bind)
  references web."HttpdBind" (net_bind)
  on delete restrict
  on update cascade
;
alter table web."VirtualHost"
  add constraint certificate_fkey
  foreign key (certificate)
  references ssl_certificates (pkey)
  on delete restrict
  on update cascade
;
alter table web."VirtualHost"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
