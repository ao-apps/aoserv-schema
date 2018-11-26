alter table server."Server"
  add constraint farm_fkey
  foreign key (farm)
  references infrastructure."ServerFarm" ("name")
  on delete restrict
  on update cascade
;
alter table server."Server"
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references distribution."OperatingSystemVersion" (id)
  on delete restrict
  on update cascade
;
alter table server."Server"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (id)
  on delete restrict
  on update cascade
;
