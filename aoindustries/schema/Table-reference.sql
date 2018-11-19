alter table "schema"."Table"
  add constraint schema_fkey
  foreign key ("schema")
  references "schema"."Schema" (id)
  on delete restrict
  on update cascade
;
alter table "schema"."Table"
  add constraint "sinceVersion_fkey"
  foreign key ("sinceVersion")
  references "schema"."AOServProtocol" (version)
  on delete restrict
  on update cascade
;
alter table "schema"."Table"
  add constraint "lastVersion_fkey"
  foreign key ("lastVersion")
  references "schema"."AOServProtocol" (version)
  on delete restrict
  on update cascade
;
