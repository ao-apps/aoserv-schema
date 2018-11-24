alter table backup."BackupPartition"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references server."AoServer" (server)
  on delete restrict
  on update cascade
;
