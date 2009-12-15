alter table businesses
  add constraint parent_fkey
  foreign key (parent)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table businesses
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
alter table businesses
  add constraint package_definition_fkey
  foreign key (package_definition)
  references package_definitions (pkey)
  on delete restrict
  on update cascade
;
alter table businesses
  add constraint created_by_fkey
  foreign key (created_by)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
