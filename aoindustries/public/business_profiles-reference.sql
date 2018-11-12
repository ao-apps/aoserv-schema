alter table business_profiles
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table business_profiles
  add constraint country_fkey
  foreign key (country)
  references country_codes (code)
  on delete restrict
  on update cascade
;
