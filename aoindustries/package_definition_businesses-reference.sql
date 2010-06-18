alter table package_definition_businesses
  add constraint package_definition_fkey
  foreign key (package_definition, approved)
  references package_definitions (pkey, approved)
  on delete restrict
  on update cascade
;
alter table package_definition_businesses
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
