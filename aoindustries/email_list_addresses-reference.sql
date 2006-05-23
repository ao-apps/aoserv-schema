alter table email_list_addresses
  add constraint email_address_fkey
  foreign key (email_address)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table email_list_addresses
  add constraint email_list_fkey
  foreign key (email_list)
  references email_lists (pkey)
  on delete restrict
  on update cascade
;
