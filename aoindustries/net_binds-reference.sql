alter table net_binds
  add constraint accounting_fkey
  foreign key (accounting, business_server)
  references business_servers (accounting, pkey)
  on delete restrict
  on update cascade
;
alter table net_binds
  add constraint server_fkey
  foreign key (server, business_server)
  references business_servers (server, pkey)
  on delete restrict
  on update cascade
;
alter table net_binds
  add constraint ip_address_fkey
  foreign key (server, ip_address)
  references ip_addresses (server, server_resource)
  on delete restrict
  on update cascade
;
alter table net_binds
  add constraint net_protocol_fkey
  foreign key (net_protocol)
  references net_protocols (protocol)
  on delete restrict
  on update cascade
;
alter table net_binds
  add constraint app_protocol_fkey
  foreign key (app_protocol)
  references protocols (protocol)
  on delete restrict
  on update cascade
;
