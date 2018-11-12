alter table email_attachment_blocks
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux_server_accounts (pkey)
  on delete restrict
  on update cascade
;
alter table email_attachment_blocks
  add constraint extension_fkey
  foreign key (extension)
  references email_attachment_types (extension)
  on delete restrict
  on update cascade
;
