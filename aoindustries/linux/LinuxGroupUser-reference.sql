alter table linux."LinuxGroupUser"
  add constraint group_fkey
  foreign key ("group")
  references linux."LinuxGroup" ("name")
  on delete restrict
  on update cascade
;
alter table linux."LinuxGroupUser"
  add constraint username_fkey
  foreign key (username)
  references linux."LinuxUser" (username)
  on delete restrict
  on update cascade
;
alter table linux."LinuxGroupUser"
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references distribution."OperatingSystemVersion" (pkey)
  on delete restrict
  on update cascade
;