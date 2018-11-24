alter table net_binds
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
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
  add constraint "ipAddress_fkey"
  foreign key ("ipAddress")
  references net."IpAddress" (id)
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
  add constraint app_protocol_fkey
  foreign key (app_protocol)
  references protocols (protocol)
  on delete restrict
  on update cascade
;
