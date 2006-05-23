alter table schema_foreign_keys
  add constraint key_column_fkey
  foreign key (key_column)
  references schema_columns (pkey)
  on delete restrict
  on update cascade
;
alter table schema_foreign_keys
  add constraint foreign_column_fkey
  foreign key (foreign_column)
  references schema_columns (pkey)
  on delete restrict
  on update cascade
;
alter table schema_foreign_keys
  add constraint tied_bridge_fkey
  foreign key (tied_bridge)
  references schema_foreign_keys (pkey)
  on delete restrict
  on update cascade
;
alter table schema_foreign_keys
  add constraint since_version_fkey
  foreign key (since_version)
  references aoserv_protocols (version)
  on delete restrict
  on update cascade
;
alter table schema_foreign_keys
  add constraint last_version_fkey
  foreign key (last_version)
  references aoserv_protocols (version)
  on delete restrict
  on update cascade
;
