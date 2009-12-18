alter table httpd_sites
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux_server_accounts (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux_server_groups (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
