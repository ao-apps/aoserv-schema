alter table postgres_databases
  add constraint postgres_server_fkey
  foreign key (postgres_server)
  references postgresql."Server" (pkey)
  on delete restrict
  on update cascade
;
alter table postgres_databases
  add constraint datdba_fkey
  foreign key (datdba)
  references postgres_server_users (pkey)
  on delete restrict
  on update cascade
;
alter table postgres_databases
  add constraint encoding_fkey
  foreign key (encoding)
  references postgresql."Encoding" (pkey)
  on delete restrict
  on update cascade
;
