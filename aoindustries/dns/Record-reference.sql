alter table dns."Record"
  add constraint zone_fkey
  foreign key ("zone")
  references dns."Zone" ("zone")
  on delete restrict
  on update cascade
;
alter table dns."Record"
  add constraint type_fkey
  foreign key ("type")
  references dns."RecordType" ("type")
  on delete restrict
  on update cascade
;
alter table dns."Record"
  add constraint "dhcpAddress_fkey"
  foreign key ("dhcpAddress")
  references "IPAddress" (id)
  on delete restrict
  on update cascade
;
