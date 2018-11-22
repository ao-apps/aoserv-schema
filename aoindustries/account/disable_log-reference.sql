alter table disable_log
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table disable_log
  add constraint disabled_by_fkey
  foreign key (disabled_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
