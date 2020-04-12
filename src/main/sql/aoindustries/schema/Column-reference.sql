alter table "schema"."Column"
  add constraint table_fkey
  foreign key ("table")
  references "schema"."Table" (id)
  on delete restrict
  on update cascade
;
alter table "schema"."Column"
  add constraint "sinceVersion_fkey"
  foreign key ("sinceVersion")
  references "schema"."AoservProtocol" (version)
  on delete restrict
  on update cascade
;
alter table "schema"."Column"
  add constraint "lastVersion_fkey"
  foreign key ("lastVersion")
  references "schema"."AoservProtocol" (version)
  on delete restrict
  on update cascade
;
alter table "schema"."Column"
  add constraint type_fkey
  foreign key ("type")
  references "schema"."Type" (id)
  on delete restrict
  on update cascade
;
