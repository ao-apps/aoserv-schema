alter table email."InboxAddress"
  add constraint email_address_fkey
  foreign key (email_address)
  references email."Address" (id)
  on delete restrict
  on update cascade
;
alter table email."InboxAddress"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux."UserServer" (id)
  on delete restrict
  on update cascade
;
