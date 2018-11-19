alter table "schema"."Schema"
  add constraint "sinceVersion_fkey"
  foreign key ("sinceVersion")
  references "schema"."AOServProtocol" (version)
  on delete restrict
  on update cascade
;
alter table "schema"."Schema"
  add constraint "lastVersion_fkey"
  foreign key ("lastVersion")
  references "schema"."AOServProtocol" (version)
  on delete restrict
  on update cascade
;
