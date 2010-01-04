create table postgres_versions (
  version integer primary key,
  minor_version text not null,
  postgis_version integer
);
grant all on postgres_versions to aoadmin;
grant select on postgres_versions to aoserv_app;
