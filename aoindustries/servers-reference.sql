alter table servers
  add constraint resource_fkey
  foreign key (resource_type, resource)
  references resources (resource_type, pkey)
  on delete restrict
  on update cascade
;
alter table servers
  add constraint accounting_fkey
  foreign key (accounting, resource)
  references resources (accounting, pkey)
  on delete restrict
  on update cascade
;
alter table servers
  add constraint farm_fkey
  foreign key (farm)
  references server_farms (resource)
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
