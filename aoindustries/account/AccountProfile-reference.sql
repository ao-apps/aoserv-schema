alter table account."AccountProfile"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table account."AccountProfile"
  add constraint country_fkey
  foreign key (country)
  references country_codes (code)
  on delete restrict
  on update cascade
;