alter table net."FirewallZone"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (id)
  on delete restrict
  on update cascade
;
