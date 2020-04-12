alter table master."AdministratorPermission"
  add constraint username_fkey
  foreign key (username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table master."AdministratorPermission"
  add constraint permission_fkey
  foreign key ("permission")
  references master."Permission" ("name")
  on delete restrict
  on update cascade
;
