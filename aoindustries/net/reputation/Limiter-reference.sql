alter table "net/reputation"."Limiter"
  add constraint net_device_fkey
  foreign key (net_device)
  references net."Device" (id)
  on delete restrict
  on update cascade
;
