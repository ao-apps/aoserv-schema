alter table postgres_encodings
  add constraint postgres_version_fkey
  foreign key (postgres_version)
  references postgres_versions (version)
  on delete restrict
  on update cascade
;
