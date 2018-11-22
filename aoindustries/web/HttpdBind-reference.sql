alter table httpd."HttpdBind"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete cascade
  on update cascade
;
alter table httpd."HttpdBind"
  add constraint httpd_server_fkey
  foreign key (httpd_server)
  references httpd."HttpdServer" (pkey)
  on delete restrict
  on update cascade
;
