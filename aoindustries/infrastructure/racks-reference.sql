alter table racks
  add constraint farm_fkey
  foreign key (farm)
  references infrastructure."ServerFarm" ("name")
  on delete restrict
  on update cascade
;
