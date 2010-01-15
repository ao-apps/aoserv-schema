alter table brands
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint smtp_email_inbox_fkey
  foreign key (smtp_email_inbox)
  references email_inboxes (linux_account)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint imap_email_inbox_fkey
  foreign key (imap_email_inbox)
  references email_inboxes (linux_account)
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
alter table brands
  add constraint aoweb_struts_vnc_bind_fkey
  foreign key (aoweb_struts_vnc_bind)
  references net_binds (pkey)
  on update cascade
  on delete restrict
;
