alter table dns_zones
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
