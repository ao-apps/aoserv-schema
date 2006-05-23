alter table majordomo_servers
  add constraint domain_fkey
  foreign key (domain)
  references email_domains (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_servers
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux_server_accounts (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_servers
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux_server_groups (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_servers
  add constraint version_fkey
  foreign key (version)
  references majordomo_versions (version)
  on delete restrict
  on update cascade
;
alter table majordomo_servers
  add constraint majordomo_pipe_address_fkey
  foreign key (majordomo_pipe_address)
  references email_pipe_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_servers
  add constraint owner_majordomo_add_fkey
  foreign key (owner_majordomo_add)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_servers
  add constraint majordomo_owner_add_fkey
  foreign key (majordomo_owner_add)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_servers
  add constraint backup_level_fkey
  foreign key (backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table majordomo_servers
  add constraint backup_retention_fkey
  foreign key (backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
