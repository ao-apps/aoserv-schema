alter table ip_addresses
  add constraint resource_type_fkey
  foreign key (resource_type, server_resource)
  references server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table ip_addresses
  add constraint server_fkey
  foreign key (server, server_resource)
  references server_resources (server, resource)
  on delete restrict
  on update cascade
;
alter table ip_addresses
  add constraint net_device_fkey
  foreign key (server, net_device)
  references net_devices (server, pkey)
  on delete restrict
  on update cascade
;
