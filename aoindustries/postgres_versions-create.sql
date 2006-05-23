create table postgres_versions (
  version integer
    constraint postgres_versions_pkey
      primary key,
  minor_version text
    not null
);
grant all on postgres_versions to aoadmin;
grant select, update on postgres_versions to aoserv_app;
