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
