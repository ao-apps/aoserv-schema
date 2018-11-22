alter table servers
  add constraint farm_fkey
  foreign key (farm)
  references server_farms ("name")
  on delete restrict
  on update cascade
;
alter table servers
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references distribution."OperatingSystemVersion" (pkey)
  on delete restrict
  on update cascade
;
alter table servers
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (pkey)
  on delete restrict
  on update cascade
;
