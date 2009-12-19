alter table resources
  add constraint resource_type_fkey
  foreign key (resource_type)
  references resource_types ("name")
  on delete restrict
  on update cascade
;
alter table resources
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table resources
  add constraint created_by_fkey
  foreign key (created_by)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table resources
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
