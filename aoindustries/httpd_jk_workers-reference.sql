alter table httpd_workers
  add constraint code_fkey
  foreign key (code)
  references httpd_jk_codes (code)
  on delete restrict
  on update cascade
;
alter table httpd_workers
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_workers
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references httpd_tomcat_sites (httpd_site)
  on delete restrict
  on update cascade
;
