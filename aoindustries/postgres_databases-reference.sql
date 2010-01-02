alter table postgres_databases
  add constraint postgres_server_fkey
  foreign key (postgres_server)
  references postgres_servers (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table postgres_databases
  add constraint datdba_fkey
  foreign key (datdba)
  references postgres_users (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table postgres_databases
  add constraint encoding_fkey
  foreign key (encoding)
  references postgres_encodings (pkey)
  on delete restrict
  on update cascade
;
