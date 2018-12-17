alter table account."Administrator"
  add constraint username_fkey
  foreign key (username)
  references account."User" (username)
  on delete restrict
  on update cascade
;
alter table account."Administrator"
  add constraint country_fkey
  foreign key (country)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table account."Administrator"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (id)
  on delete restrict
  on update cascade
;
