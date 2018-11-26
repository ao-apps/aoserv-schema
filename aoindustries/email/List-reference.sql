alter table email."List"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux."UserServer" (id)
  on delete restrict
  on update cascade
;
alter table email."List"
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux."GroupServer" (id)
  on delete restrict
  on update cascade
;
alter table email."List"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (id)
  on delete restrict
  on update cascade
;
