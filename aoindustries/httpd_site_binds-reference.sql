alter table httpd_site_binds
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references httpd_sites (ao_server_resource)
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
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
