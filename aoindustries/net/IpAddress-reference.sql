alter table net."IpAddress"
  add constraint device_fkey
  foreign key (device)
  references net."Device" (id)
  on delete restrict
  on update cascade
;
alter table net."IpAddress"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (id)
  on delete restrict
  on update cascade
;
