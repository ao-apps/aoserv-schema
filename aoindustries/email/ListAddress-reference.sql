alter table email."ListAddress"
  add constraint email_address_fkey
  foreign key (email_address)
  references email."Address" (pkey)
  on delete restrict
  on update cascade
;
alter table email."ListAddress"
  add constraint email_list_fkey
  foreign key (email_list)
  references email_lists (pkey)
  on delete restrict
  on update cascade
;
