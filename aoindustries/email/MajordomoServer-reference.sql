alter table email."MajordomoServer"
  add constraint domain_fkey
  foreign key ("domain")
  references email."Domain" (pkey)
  on delete restrict
  on update cascade
;
alter table email."MajordomoServer"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux_server_accounts (pkey)
  on delete restrict
  on update cascade
;
alter table email."MajordomoServer"
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux_server_groups (pkey)
  on delete restrict
  on update cascade
;
alter table email."MajordomoServer"
  add constraint version_fkey
  foreign key (version)
  references email."MajordomoVersion" (version)
  on delete restrict
  on update cascade
;
alter table email."MajordomoServer"
  add constraint majordomo_pipe_address_fkey
  foreign key (majordomo_pipe_address)
  references email."PipeAddress" (pkey)
  on delete restrict
  on update cascade
;
alter table email."MajordomoServer"
  add constraint owner_majordomo_add_fkey
  foreign key (owner_majordomo_add)
  references email."Address" (pkey)
  on delete restrict
  on update cascade
;
alter table email."MajordomoServer"
  add constraint majordomo_owner_add_fkey
  foreign key (majordomo_owner_add)
  references email."Address" (pkey)
  on delete restrict
  on update cascade
;
