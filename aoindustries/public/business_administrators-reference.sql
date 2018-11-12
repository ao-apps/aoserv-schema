alter table business_administrators
  add constraint username_fkey
  foreign key (username)
  references usernames (username)
  on delete restrict
  on update cascade
;
alter table business_administrators
  add constraint country_fkey
  foreign key (country)
  references country_codes (code)
  on delete restrict
  on update cascade
;
alter table business_administrators
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
