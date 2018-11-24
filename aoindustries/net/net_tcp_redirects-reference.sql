alter table net_tcp_redirects
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table net_tcp_redirects
  add constraint destination_port_fkey
  foreign key (destination_port)
  references net_ports (port)
  on delete restrict
  on update cascade
;
