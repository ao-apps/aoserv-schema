alter table schema_columns
  add constraint table_name_fkey
  foreign key (table_name)
  references schema_tables (name)
  on delete restrict
  on update cascade
;
alter table schema_columns
  add constraint type_fkey
  foreign key (type)
  references schema_types (type)
  on delete restrict
  on update cascade
;
alter table schema_columns
  add constraint since_version_fkey
  foreign key (since_version)
  references aoserv_protocols (version)
  on delete restrict
  on update cascade
;
alter table schema_columns
  add constraint last_version_fkey
  foreign key (last_version)
  references aoserv_protocols (version)
  on delete restrict
  on update cascade
;
