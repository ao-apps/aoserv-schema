alter table ftp."PrivateServer"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table ftp."PrivateServer"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux."UserServer" (pkey)
  on delete restrict
  on update cascade
;
alter table ftp."PrivateServer"
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux."GroupServer" (pkey)
  on delete restrict
  on update cascade
;
