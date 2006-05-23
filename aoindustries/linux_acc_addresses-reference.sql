alter table linux_acc_addresses
  add constraint email_address_fkey
  foreign key (email_address)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table linux_acc_addresses
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux_accounts (username)
  on delete restrict
  on update cascade
;
