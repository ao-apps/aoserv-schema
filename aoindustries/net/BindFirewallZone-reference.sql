alter table net."BindFirewallZone"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (pkey)
  on delete cascade
  on update cascade
;
alter table net."BindFirewallZone"
  add constraint firewalld_zone_fkey
  foreign key (firewalld_zone)
  references net."FirewallZone" (pkey)
  on delete restrict
  on update cascade
;