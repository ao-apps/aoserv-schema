alter table failover_file_replications
  add constraint from_server_fkey
  foreign key (from_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table failover_file_replications
  add constraint to_server_fkey
  foreign key (to_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
