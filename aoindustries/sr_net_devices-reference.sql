alter table sr_net_devices
  add constraint server_report_fkey
  foreign key (server_report)
  references server_reports (pkey)
  on update cascade
  on delete cascade
;
alter table sr_net_devices
  add constraint device_id_fkey
  foreign key (device_id)
  references net_device_ids (name)
  on update cascade
  on delete restrict
;
