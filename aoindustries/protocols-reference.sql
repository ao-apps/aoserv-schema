alter table protocols
  add constraint port_fkey
  foreign key (port)
  references net_ports (port)
  on delete restrict
  on update cascade
;
alter table protocols
  add constraint net_protocol_fkey
  foreign key (net_protocol)
  references net_protocols (protocol)
  on delete restrict
  on update cascade
;
