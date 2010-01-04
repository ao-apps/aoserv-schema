alter table ftp_guest_users
  add constraint linux_account_type_fkey
  foreign key (linux_account_type, linux_account)
  references linux_accounts (linux_account_type, ao_server_resource)
  on delete restrict
  on update cascade
;
