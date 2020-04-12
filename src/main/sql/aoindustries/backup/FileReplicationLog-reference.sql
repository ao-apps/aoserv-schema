alter table backup."FileReplicationLog"
  add constraint replication_fkey
  foreign key (replication)
  references backup."FileReplication" (id)
  on delete restrict
  on update cascade
;
