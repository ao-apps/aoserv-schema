create table majordomo_versions (
  version text
    constraint majordomo_version_pkey primary key,
  created timestamp
    not null
    default now()
);
grant all on majordomo_versions to aoadmin;
grant select on majordomo_versions to aoserv_app;
