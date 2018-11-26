alter table "net.management"."IpAddressJustifyingProtocol"
  add constraint "appProtocol_fkey"
  foreign key ("appProtocol")
  references net."AppProtocol" (protocol)
  on delete restrict
  on update cascade
;
