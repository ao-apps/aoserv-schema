alter table ftp."GuestUser"
  add constraint username_fkey
  foreign key (username)
  references linux."LinuxUser" (username)
  on delete restrict
  on update cascade
;
