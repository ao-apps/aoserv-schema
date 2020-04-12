alter table "schema"."Type"
  add constraint "sinceVersion_fkey"
  foreign key ("sinceVersion")
  references "schema"."AoservProtocol" (version)
  on delete restrict
  on update cascade
;
alter table "schema"."Type"
  add constraint "lastVersion_fkey"
  foreign key ("lastVersion")
  references "schema"."AoservProtocol" (version)
  on delete restrict
  on update cascade
;
