alter table protocols
  add constraint net_protocol_fkey
  foreign key (net_protocol)
  references net_protocols (protocol)
  on delete restrict
  on update cascade
;
