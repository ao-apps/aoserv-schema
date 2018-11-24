alter table ip_reputation_limiters
  add constraint net_device_fkey
  foreign key (net_device)
  references net."Device" (pkey)
  on delete restrict
  on update cascade
;
