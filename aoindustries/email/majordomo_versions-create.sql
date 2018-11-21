create table majordomo_versions (
  version text
    primary key,
  created timestamp with time zone
    not null
    default now()
);
grant all    on majordomo_versions to aoadmin;
grant select on majordomo_versions to aoserv_app;
