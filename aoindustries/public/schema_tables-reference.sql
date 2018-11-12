alter table schema_tables
  add constraint since_version_fkey
  foreign key (since_version)
  references aoserv_protocols (version)
  on delete restrict
  on update cascade
;
alter table schema_tables
  add constraint last_version_fkey
  foreign key (last_version)
  references aoserv_protocols (version)
  on delete restrict
  on update cascade
;
