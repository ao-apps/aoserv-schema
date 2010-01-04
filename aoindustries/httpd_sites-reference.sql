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
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux_accounts (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint linux_group_fkey
  foreign key (linux_group)
  references linux_groups (ao_server_resource)
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
