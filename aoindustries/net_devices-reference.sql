alter table net_devices
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table net_devices
  add constraint device_id_fkey
  foreign key (device_id)
  references net_device_ids (name)
  on delete restrict
  on update cascade
;
