alter table file_backup_stats
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
