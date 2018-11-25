alter table postgresql."Encoding"
  add constraint postgres_version_fkey
  foreign key (postgres_version)
  references postgresql."Version" (version)
  on delete restrict
  on update cascade
;
