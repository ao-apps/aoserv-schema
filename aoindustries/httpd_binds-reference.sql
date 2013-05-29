alter table httpd_binds
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_binds
  add constraint httpd_server_fkey
  foreign key (httpd_server)
  references httpd_servers (pkey)
  on delete restrict
  on update cascade
;
