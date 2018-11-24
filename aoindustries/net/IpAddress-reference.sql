alter table net."IpAddress"
  add constraint "netDevice_fkey"
  foreign key ("netDevice")
  references net."Device" (pkey)
  on delete restrict
  on update cascade
;
alter table net."IpAddress"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (pkey)
  on delete restrict
  on update cascade
;
