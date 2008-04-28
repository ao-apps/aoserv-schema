alter table email_lists
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux_server_accounts (pkey)
  on delete restrict
  on update cascade
;
alter table email_lists
  add constraint linux_group_fkey
  foreign key (linux_group)
  references linux_server_groups (pkey)
  on delete restrict
  on update cascade
;
alter table email_lists
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
