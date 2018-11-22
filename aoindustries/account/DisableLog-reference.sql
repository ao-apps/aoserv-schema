alter table account."DisableLog"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table account."DisableLog"
  add constraint disabled_by_fkey
  foreign key (disabled_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
