alter table net."Device"
  add constraint server_fkey
  foreign key (server)
  references net."Host" (id)
  on delete restrict
  on update cascade
;
alter table net."Device"
  add constraint "deviceId_fkey"
  foreign key ("deviceId")
  references net."DeviceId" ("name")
  on delete restrict
  on update cascade
;
