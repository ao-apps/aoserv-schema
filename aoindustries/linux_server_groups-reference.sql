alter table linux_server_groups
  add constraint name_fkey
  foreign key (name)
  references linux_groups (name)
  on delete restrict
  on update cascade
;
alter table linux_server_groups
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table linux_server_groups
  add constraint gid_fkey
  foreign key (gid)
  references linux_ids (id)
  on delete restrict
  on update cascade
;
