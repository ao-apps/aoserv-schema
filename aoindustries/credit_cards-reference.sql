alter table credit_cards
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table credit_cards
  add constraint created_by_fkey
  foreign key (created_by)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
