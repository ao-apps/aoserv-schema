alter table net_devices
  add constraint server_fkey
  foreign key (server)
  references servers (resource)
  on delete restrict
  on update cascade
;
alter table net_devices
  add constraint device_id_fkey
  foreign key (device_id)
  references net_device_ids ("name")
  on delete restrict
  on update cascade
;
