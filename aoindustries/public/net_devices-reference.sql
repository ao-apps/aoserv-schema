alter table net_devices
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table net_devices
  add constraint "deviceID_fkey"
  foreign key ("deviceID")
  references net_device_ids ("name")
  on delete restrict
  on update cascade
;
