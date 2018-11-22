alter table billing."Package"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table billing."Package"
  add constraint package_definition_fkey
  foreign key (package_definition)
  references billing."PackageDefinition" (pkey)
  on delete restrict
  on update cascade
;
alter table billing."Package"
  add constraint created_by_fkey
  foreign key (created_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table billing."Package"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
