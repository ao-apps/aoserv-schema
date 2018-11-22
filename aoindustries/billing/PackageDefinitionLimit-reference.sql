alter table billing."PackageDefinitionLimit"
  add constraint package_definition_fkey
  foreign key (package_definition)
  references package_definitions (pkey)
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinitionLimit"
  add constraint resource_fkey
  foreign key (resource)
  references resources ("name")
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinitionLimit"
  add constraint additional_transaction_type_fkey
  foreign key (additional_transaction_type)
  references transaction_types ("name")
  on delete restrict
  on update cascade
;
