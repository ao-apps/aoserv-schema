alter table distribution."SoftwareVersion"
  add constraint name_fkey
  foreign key ("name")
  references distribution."Software" ("name")
  on delete restrict
  on update cascade
;
alter table distribution."SoftwareVersion"
  add constraint owner_fkey
  foreign key (owner)
  references master."MasterUser" (username)
  on delete restrict
  on update cascade
;
alter table distribution."SoftwareVersion"
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references distribution."OperatingSystemVersion" (pkey)
  on delete restrict
  on update cascade
;
