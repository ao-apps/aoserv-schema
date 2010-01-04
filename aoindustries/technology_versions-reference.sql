alter table technology_versions
  add constraint name_fkey
  foreign key (name)
  references technology_names ("name")
  on delete restrict
  on update cascade
;
alter table technology_versions
  add constraint owner_fkey
  foreign key (owner)
  references master_users (username)
  on delete restrict
  on update cascade
;
alter table technology_versions
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references operating_system_versions (pkey)
  on delete restrict
  on update cascade
;
