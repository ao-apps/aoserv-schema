alter table postgres_versions
  add constraint version_fkey
  foreign key (version)
  references distribution."SoftwareVersion" (pkey)
  on delete restrict
  on update cascade
;
alter table postgres_versions
  add constraint postgis_version_fkey
  foreign key (postgis_version)
  references distribution."SoftwareVersion" (pkey)
  on delete restrict
  on update cascade
;
