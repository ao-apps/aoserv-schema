alter table linux."Group"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
alter table linux."Group"
  add constraint type_fkey
  foreign key ("type")
  references linux."GroupType" ("name")
  on delete restrict
  on update cascade
;
