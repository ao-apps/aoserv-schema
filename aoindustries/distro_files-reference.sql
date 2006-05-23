alter table distro_files
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references operating_system_versions (pkey)
  on delete restrict
  on update cascade
;
alter table distro_files
  add constraint type_fkey
  foreign key (type)
  references distro_file_types (type)
  on delete restrict
  on update cascade
;
alter table distro_files
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux_accounts (username)
  on delete restrict
  on update cascade
;
alter table distro_files
  add constraint linux_group_fkey
  foreign key (linux_group)
  references linux_groups (name)
  on delete restrict
  on update cascade
;
