alter table web."Site"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table web."Site"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
alter table web."Site"
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux_accounts (username)
  on delete restrict
  on update cascade
;
alter table web."Site"
  add constraint linux_group_fkey
  foreign key (linux_group)
  references linux_groups ("name")
  on delete restrict
  on update cascade
;
alter table web."Site"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
alter table web."Site"
  add constraint php_version_fkey
  foreign key (php_version)
  references distribution."SoftwareVersion" (pkey)
  on delete restrict
  on update cascade
;
