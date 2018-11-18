alter table "IPAddress"
  add constraint "netDevice_fkey"
  foreign key ("netDevice")
  references net_devices (pkey)
  on delete restrict
  on update cascade
;
alter table "IPAddress"
  add constraint package_fkey
  foreign key (package)
  references packages (pkey)
  on delete restrict
  on update cascade
;
