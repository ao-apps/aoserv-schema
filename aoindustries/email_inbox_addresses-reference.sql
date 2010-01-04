alter table email_inbox_addresses
  add constraint email_address_fkey
  foreign key (email_address)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table email_inbox_addresses
  add constraint email_inbox_fkey
  foreign key (email_inbox)
  references email_inboxes (linux_account)
  on delete restrict
  on update cascade
;
