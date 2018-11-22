alter table httpd_site_binds
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references httpd_sites (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_site_binds
  add constraint httpd_bind_fkey
  foreign key (httpd_bind)
  references httpd_binds (net_bind)
  on delete restrict
  on update cascade
;
alter table httpd_site_binds
  add constraint certificate_fkey
  foreign key (certificate)
  references ssl_certificates (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_site_binds
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
