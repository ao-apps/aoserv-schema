alter table servers
  add constraint farm_fkey
  foreign key (farm)
  references server_farms (name)
  on delete restrict
  on update cascade
;
alter table servers
  add constraint owner_fkey
  foreign key (owner)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table servers
  add constraint administrator_fkey
  foreign key (administrator)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table servers
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references operating_system_versions (pkey)
  on delete restrict
  on update cascade
;
