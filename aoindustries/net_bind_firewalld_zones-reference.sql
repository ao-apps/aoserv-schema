alter table net_bind_firewalld_zones
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete cascade
  on update cascade
;
alter table net_bind_firewalld_zones
  add constraint firewalld_zone_fkey
  foreign key (firewalld_zone)
  references firewalld_zones (pkey)
  on delete restrict
  on update cascade
;
