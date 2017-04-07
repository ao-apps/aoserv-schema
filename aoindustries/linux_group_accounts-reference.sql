alter table linux_group_accounts
  add constraint group_name_fkey
  foreign key (group_name)
  references linux_groups (name)
  on delete restrict
  on update cascade
;
alter table linux_group_accounts
  add constraint username_fkey
  foreign key (username)
  references linux_accounts (username)
  on delete restrict
  on update cascade
;
alter table linux_group_accounts
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references operating_system_versions (pkey)
  on delete restrict
  on update cascade
;
