alter table linux_account_types
  add constraint resource_type_fkey
  foreign key (resource_type)
  references resource_types ("name")
  on delete restrict
  on update cascade
;
