alter table postgresql."Version"
  add constraint version_fkey
  foreign key (version)
  references distribution."SoftwareVersion" (id)
  on delete restrict
  on update cascade
;
alter table postgresql."Version"
  add constraint postgis_version_fkey
  foreign key (postgis_version)
  references distribution."SoftwareVersion" (id)
  on delete restrict
  on update cascade
;
