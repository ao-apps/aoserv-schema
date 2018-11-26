alter table postgresql."Server"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table postgresql."Server"
  add constraint version_fkey
  foreign key (version)
  references postgresql."Version" (version)
  on delete restrict
  on update cascade
;
alter table postgresql."Server"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
