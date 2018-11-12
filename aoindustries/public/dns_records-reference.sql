alter table dns_records
  add constraint zone_fkey
  foreign key (zone)
  references dns_zones (zone)
  on delete restrict
  on update cascade
;
alter table dns_records
  add constraint type_fkey
  foreign key (type)
  references dns_types (type)
  on delete restrict
  on update cascade
;
alter table dns_records
  add constraint dhcp_address_fkey
  foreign key (dhcp_address)
  references ip_addresses (pkey)
  on delete restrict
  on update cascade
;
