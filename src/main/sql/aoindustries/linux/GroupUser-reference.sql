alter table linux."GroupUser"
  add constraint group_fkey
  foreign key ("group")
  references linux."Group" ("name")
  on delete restrict
  on update cascade
;
alter table linux."GroupUser"
  add constraint user_fkey
  foreign key ("user")
  references linux."User" (username)
  on delete restrict
  on update cascade
;
alter table linux."GroupUser"
  add constraint "operatingSystemVersion_fkey"
  foreign key ("operatingSystemVersion")
  references distribution."OperatingSystemVersion" (id)
  on delete restrict
  on update cascade
;
