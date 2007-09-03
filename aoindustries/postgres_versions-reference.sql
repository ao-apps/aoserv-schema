alter table postgres_versions
  add constraint version_fkey
  foreign key (version)
  references technology_versions (pkey)
  on delete restrict
  on update cascade
;
alter table postgres_versions
  add constraint postgis_version_fkey
  foreign key (postgis_version)
  references technology_versions (pkey)
  on delete restrict
  on update cascade
;
