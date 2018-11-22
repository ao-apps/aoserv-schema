alter table signup_requests
  add constraint brand_fkey
  foreign key (brand)
  references brands (accounting)
  on delete restrict
  on update cascade
;
alter table signup_requests
  add constraint package_definition_fkey
  foreign key (package_definition)
  references package_definitions (pkey)
  on delete restrict
  on update cascade
;
alter table signup_requests
  add constraint business_country_fkey
  foreign key (business_country)
  references country_codes (code)
  on delete restrict
  on update cascade
;
alter table signup_requests
  add constraint ba_country_fkey
  foreign key (ba_country)
  references country_codes (code)
  on delete restrict
  on update cascade
;
alter table signup_requests
  add constraint encryption_from_fkey
  foreign key (encryption_from)
  references account."EncryptionKey" (pkey)
  on delete restrict
  on update cascade
;
alter table signup_requests
  add constraint encryption_recipient_fkey
  foreign key (encryption_recipient)
  references account."EncryptionKey" (pkey)
  on delete restrict
  on update cascade
;
alter table signup_requests
  add constraint completed_by_fkey
  foreign key (completed_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
