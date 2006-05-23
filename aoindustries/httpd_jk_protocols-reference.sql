alter table httpd_jk_protocols
  add constraint protocol_fkey
  foreign key (protocol)
  references protocols (protocol)
  on delete restrict
  on update cascade
;
