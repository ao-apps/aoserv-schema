alter table "web/tomcat"."TomcatJkProtocol"
  add constraint protocol_fkey
  foreign key (protocol)
  references protocols (protocol)
  on delete restrict
  on update cascade
;
