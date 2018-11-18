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
  add constraint "dhcpAddress_fkey"
  foreign key ("dhcpAddress")
  references "IPAddress" (id)
  on delete restrict
  on update cascade
;
