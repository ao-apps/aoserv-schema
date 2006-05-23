alter table email_forwarding
  add constraint email_address_fkey
  foreign key (email_address)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
