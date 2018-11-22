alter table web."TomcatJkProtocol"
  add constraint protocol_fkey
  foreign key (protocol)
  references protocols (protocol)
  on delete restrict
  on update cascade
;
