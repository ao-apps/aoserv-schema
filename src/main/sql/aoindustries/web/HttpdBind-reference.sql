alter table web."HttpdBind"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (id)
  on delete cascade
  on update cascade
;
alter table web."HttpdBind"
  add constraint httpd_server_fkey
  foreign key (httpd_server)
  references web."HttpdServer" (id)
  on delete restrict
  on update cascade
;
