alter table postgresql."Database"
  add constraint postgres_server_fkey
  foreign key (postgres_server)
  references postgresql."Server" (bind)
  on delete restrict
  on update cascade
;
alter table postgresql."Database"
  add constraint datdba_fkey
  foreign key (datdba)
  references postgresql."UserServer" (id)
  on delete restrict
  on update cascade
;
alter table postgresql."Database"
  add constraint encoding_fkey
  foreign key (encoding)
  references postgresql."Encoding" (id)
  on delete restrict
  on update cascade
;
