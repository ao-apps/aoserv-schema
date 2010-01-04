alter table aosh_commands
  add constraint table_name_fkey
  foreign key ("table_name")
  references schema_tables ("name")
  on delete restrict
  on update cascade
;
alter table aosh_commands
  add constraint since_version_fkey
  foreign key (since_version)
  references aoserv_protocols (version)
  on delete restrict
  on update cascade
;
alter table aosh_commands
  add constraint last_version_fkey
  foreign key (last_version)
  references aoserv_protocols (version)
  on delete restrict
  on update cascade
;
