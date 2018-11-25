alter table postgresql."Database"
  add constraint postgres_server_fkey
  foreign key (postgres_server)
  references postgresql."Server" (pkey)
  on delete restrict
  on update cascade
;
alter table postgresql."Database"
  add constraint datdba_fkey
  foreign key (datdba)
  references postgresql."UserServer" (pkey)
  on delete restrict
  on update cascade
;
alter table postgresql."Database"
  add constraint encoding_fkey
  foreign key (encoding)
  references postgresql."Encoding" (pkey)
  on delete restrict
  on update cascade
;
