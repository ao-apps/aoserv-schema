alter table business_administrator_roles
  add constraint username_fkey
  foreign key (username)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table business_administrator_roles
  add constraint role_fkey
  foreign key ("role")
  references aoserv_roles ("pkey")
  on delete restrict
  on update cascade
;
