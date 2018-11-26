alter table net."BindFirewallZone"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (id)
  on delete cascade
  on update cascade
;
alter table net."BindFirewallZone"
  add constraint firewalld_zone_fkey
  foreign key (firewalld_zone)
  references net."FirewallZone" (id)
  on delete restrict
  on update cascade
;
