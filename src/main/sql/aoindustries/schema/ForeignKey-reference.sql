alter table "schema"."ForeignKey"
  add constraint column_fkey
  foreign key ("column")
  references "schema"."Column" (id)
  on delete restrict
  on update cascade
;
alter table "schema"."ForeignKey"
  add constraint "foreignColumn_fkey"
  foreign key ("foreignColumn")
  references "schema"."Column" (id)
  on delete restrict
  on update cascade
;
alter table "schema"."ForeignKey"
  add constraint "sinceVersion_fkey"
  foreign key ("sinceVersion")
  references "schema"."AoservProtocol" (version)
  on delete restrict
  on update cascade
;
alter table "schema"."ForeignKey"
  add constraint "lastVersion_fkey"
  foreign key ("lastVersion")
  references "schema"."AoservProtocol" (version)
  on delete restrict
  on update cascade
;
