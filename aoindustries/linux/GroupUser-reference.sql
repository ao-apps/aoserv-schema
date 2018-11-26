alter table linux."GroupUser"
  add constraint group_fkey
  foreign key ("group")
  references linux."Group" ("name")
  on delete restrict
  on update cascade
;
alter table linux."GroupUser"
  add constraint username_fkey
  foreign key (username)
  references linux."User" (username)
  on delete restrict
  on update cascade
;
alter table linux."GroupUser"
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references distribution."OperatingSystemVersion" (id)
  on delete restrict
  on update cascade
;
