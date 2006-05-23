alter table server_reports
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on update cascade
  on delete restrict
;
alter table server_reports
  add constraint failover_server_fkey
  foreign key (failover_server)
  references ao_servers (server)
  on update cascade
  on delete restrict
;
