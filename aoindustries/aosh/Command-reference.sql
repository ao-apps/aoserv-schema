alter table aosh."Command"
  add constraint table_fkey
  foreign key ("table")
  references "schema"."Table" (id)
  on delete restrict
  on update cascade
;
alter table aosh."Command"
  add constraint "sinceVersion_fkey"
  foreign key ("sinceVersion")
  references "schema"."AOServProtocol" (version)
  on delete restrict
  on update cascade
;
alter table aosh."Command"
  add constraint "lastVersion_fkey"
  foreign key ("lastVersion")
  references "schema"."AOServProtocol" (version)
  on delete restrict
  on update cascade
;
