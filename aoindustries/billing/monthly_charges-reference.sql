alter table monthly_charges
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table monthly_charges
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
alter table monthly_charges
  add constraint type_fkey
  foreign key (type)
  references transaction_types (name)
  on delete restrict
  on update cascade
;
alter table monthly_charges
  add constraint created_by_fkey
  foreign key (created_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
