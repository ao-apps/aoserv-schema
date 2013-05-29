alter table ftp_guest_users
  add constraint username_fkey
  foreign key (username)
  references linux_accounts (username)
  on delete restrict
  on update cascade
;
