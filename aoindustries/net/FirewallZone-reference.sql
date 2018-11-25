alter table net."FirewallZone"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (pkey)
  on delete restrict
  on update cascade
;
