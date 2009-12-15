alter table ip_addresses
  add constraint net_device_fkey
  foreign key (net_device)
  references net_devices (pkey)
  on delete restrict
  on update cascade
;
alter table ip_addresses
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
