alter table mysql_databases
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql_servers (pkey)
  on delete restrict
  on update cascade
;
alter table mysql_databases
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
alter table mysql_databases
  add constraint backup_level_fkey
  foreign key (backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table mysql_databases
  add constraint backup_retention_fkey
  foreign key (backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
