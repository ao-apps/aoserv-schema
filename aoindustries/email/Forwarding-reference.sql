alter table email."Forwarding"
  add constraint email_address_fkey
  foreign key (email_address)
  references email."Address" (pkey)
  on delete restrict
  on update cascade
;
