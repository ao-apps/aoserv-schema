alter table email_inboxes
  add constraint linux_account_type_fkey
  foreign key (linux_account_type, linux_account)
  references linux_accounts (linux_account_type, ao_server_resource)
  on delete restrict
  on update cascade
;
alter table email_inboxes
  add constraint autoresponder_from_fkey
  foreign key (linux_account, autoresponder_from)
  references email_inbox_addresses (email_inbox, pkey)
  on delete restrict
  on update cascade
;
alter table email_inboxes
  add constraint trash_email_retention_fkey
  foreign key (trash_email_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table email_inboxes
  add constraint junk_email_retention_fkey
  foreign key (junk_email_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table email_inboxes
  add constraint sa_integration_mode_fkey
  foreign key (sa_integration_mode)
  references email_sa_integration_modes ("name")
  on delete restrict
  on update cascade
;
