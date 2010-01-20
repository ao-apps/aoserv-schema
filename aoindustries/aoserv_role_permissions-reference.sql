alter table aoserv_role_permissions
  add constraint role_fkey
  foreign key ("role")
  references aoserv_roles (pkey)
  on delete restrict
  on update cascade
;
alter table aoserv_role_permissions
  add constraint permission_fkey
  foreign key ("permission")
  references aoserv_permissions ("name")
  on delete restrict
  on update cascade
;
