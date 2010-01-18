alter table dns_records
  add constraint resource_fkey
  foreign key (resource_type, resource)
  references resources (resource_type, pkey)
  on delete restrict
  on update cascade
;
alter table dns_records
  add constraint accounting_fkey
  foreign key (accounting, resource)
  references resources (accounting, pkey)
  on delete restrict
  on update cascade
;
alter table dns_records
  add constraint accounting_fkey2
  foreign key (accounting, "zone")
  references dns_zones (accounting, resource)
  on delete restrict
  on update cascade
;
alter table dns_records
  add constraint zone_fkey
  foreign key ("zone")
  references dns_zones (resource)
  on delete restrict
  on update cascade
;
alter table dns_records
  add constraint type_fkey
  foreign key ("type")
  references dns_types ("type")
  on delete restrict
  on update cascade
;
alter table dns_records
  add constraint dhcp_address_fkey
  foreign key (dhcp_address)
  references ip_addresses (server_resource)
  on delete restrict
  on update cascade
;
