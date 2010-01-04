alter table business_administrator_permissions
  add constraint username_fkey
  foreign key (username)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table business_administrator_permissions
  add constraint permission_fkey
  foreign key ("permission")
  references aoserv_permissions ("name")
  on delete restrict
  on update cascade
;
