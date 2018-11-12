alter table net_binds
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
alter table net_binds
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table net_binds
  add constraint ip_address_fkey
  foreign key (ip_address)
  references ip_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table net_binds
  add constraint port_fkey
  foreign key (port)
  references net_ports (port)
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
