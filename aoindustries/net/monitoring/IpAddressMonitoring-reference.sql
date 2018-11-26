alter table "net.monitoring"."IpAddressMonitoring"
  add constraint id_fkey
  foreign key (id)
  references net."IpAddress" (id)
  on delete cascade
  on update cascade
;
