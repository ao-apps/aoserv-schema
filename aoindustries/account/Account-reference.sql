alter table account."Account"
  add constraint parent_fkey
  foreign key (parent)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table account."Account"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
