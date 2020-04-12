alter table billing."PackageDefinitionLimit"
  add constraint package_definition_fkey
  foreign key (package_definition)
  references billing."PackageDefinition" (id)
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinitionLimit"
  add constraint resource_fkey
  foreign key (resource)
  references billing."Resource" ("name")
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinitionLimit"
  add constraint "additionalRate.currency_fkey"
  foreign key ("additionalRate.currency")
  references billing."Currency" ("currencyCode")
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinitionLimit"
  add constraint additional_transaction_type_fkey
  foreign key (additional_transaction_type)
  references billing."TransactionType" ("name")
  on delete restrict
  on update cascade
;
