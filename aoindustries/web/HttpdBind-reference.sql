alter table web."HttpdBind"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (pkey)
  on delete cascade
  on update cascade
;
alter table web."HttpdBind"
  add constraint httpd_server_fkey
  foreign key (httpd_server)
  references web."HttpdServer" (pkey)
  on delete restrict
  on update cascade
;
