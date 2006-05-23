alter table interbase_db_groups
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux_server_groups (pkey)
  on delete restrict
  on update cascade
;
