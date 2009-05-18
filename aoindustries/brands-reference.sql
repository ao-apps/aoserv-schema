alter table brands
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint smtp_linux_server_account_fkey
  foreign key (smtp_linux_server_account)
  references linux_server_accounts (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint imap_linux_server_account_fkey
  foreign key (imap_linux_server_account)
  references linux_server_accounts (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint support_email_address_fkey
  foreign key (support_email_address)
  references email_addresses (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint signup_email_address_fkey
  foreign key (signup_email_address)
  references email_addresses (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint ticket_encryption_from_fkey
  foreign key (ticket_encryption_from)
  references encryption_keys (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint ticket_encryption_recipient_fkey
  foreign key (ticket_encryption_recipient)
  references encryption_keys (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint signup_encryption_from_fkey
  foreign key (signup_encryption_from)
  references encryption_keys (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint signup_encryption_recipient_fkey
  foreign key (signup_encryption_recipient)
  references encryption_keys (pkey)
  on update cascade
  on delete restrict
;
