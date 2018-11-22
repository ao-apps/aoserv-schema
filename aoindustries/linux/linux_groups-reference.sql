alter table linux_groups
  add constraint type_fkey
  foreign key (type)
  references linux_group_types ("name")
  on delete restrict
  on update cascade
;
alter table linux_groups
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
