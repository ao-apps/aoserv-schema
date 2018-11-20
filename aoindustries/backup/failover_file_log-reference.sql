alter table failover_file_log
  add constraint replication_fkey
  foreign key (replication)
  references failover_file_replications (pkey)
  on delete restrict
  on update cascade
;
