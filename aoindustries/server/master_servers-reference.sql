alter table master_servers
  add constraint username_fkey
  foreign key (username)
  references master."User" (username)
  on delete restrict
  on update cascade
;
alter table master_servers
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
