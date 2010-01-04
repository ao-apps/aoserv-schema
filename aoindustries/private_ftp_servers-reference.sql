alter table private_ftp_servers
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table private_ftp_servers
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux_accounts (ao_server_resource) -- TODO: Limit account type
  on delete restrict
  on update cascade
;
alter table private_ftp_servers
  add constraint linux_group_fkey
  foreign key (linux_group)
  references linux_groups (ao_server_resource)
  on delete restrict
  on update cascade
;
