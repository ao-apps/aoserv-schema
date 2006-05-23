alter table blackhole_email_addresses
  add constraint email_address_fkey
  foreign key (email_address)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
