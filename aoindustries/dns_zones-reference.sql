alter table dns_zones
  add constraint resource_fkey
  foreign key (resource_type, resource)
  references resources (resource_type, pkey)
  on delete restrict
  on update cascade
;
alter table dns_zones
  add constraint accounting_fkey
  foreign key (accounting, resource)
  references resources (accounting, pkey)
  on delete restrict
  on update cascade
;
