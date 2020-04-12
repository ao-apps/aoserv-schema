alter table net."FirewallZone"
  add constraint server_fkey
  foreign key (server)
  references net."Host" (id)
  on delete restrict
  on update cascade
;
