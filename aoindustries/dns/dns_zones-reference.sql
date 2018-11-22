alter table dns_zones
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
