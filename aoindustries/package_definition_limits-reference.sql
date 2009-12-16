alter table package_definition_limits
  add constraint package_definition_fkey
  foreign key (package_definition)
  references package_definitions (pkey)
  on delete restrict
  on update cascade
;
alter table package_definition_limits
  add constraint resource_type_fkey
  foreign key (resource_type)
  references resource_types ("name")
  on delete restrict
  on update cascade
;
alter table package_definition_limits
  add constraint additional_transaction_type_fkey
  foreign key (additional_transaction_type)
  references transaction_types ("name")
  on delete restrict
  on update cascade
;
