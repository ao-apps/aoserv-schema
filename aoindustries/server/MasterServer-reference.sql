alter table server."MasterServer"
  add constraint username_fkey
  foreign key (username)
  references master."User" (username)
  on delete restrict
  on update cascade
;
alter table server."MasterServer"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (pkey)
  on delete restrict
  on update cascade
;