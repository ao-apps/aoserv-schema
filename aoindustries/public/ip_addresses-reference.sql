alter table ip_addresses
  add constraint net_device_fkey
  foreign key (net_device)
  references net_devices (pkey)
  on delete restrict
  on update cascade
;
alter table ip_addresses
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
