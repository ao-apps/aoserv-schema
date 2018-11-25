alter table net."Bind"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
alter table net."Bind"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (pkey)
  on delete restrict
  on update cascade
;
alter table net."Bind"
  add constraint "ipAddress_fkey"
  foreign key ("ipAddress")
  references net."IpAddress" (id)
  on delete restrict
  on update cascade
;
alter table net."Bind"
  add constraint app_protocol_fkey
  foreign key (app_protocol)
  references net."AppProtocol" (protocol)
  on delete restrict
  on update cascade
;
