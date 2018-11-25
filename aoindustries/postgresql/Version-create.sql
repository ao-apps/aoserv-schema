create table postgresql."Version" (
  version integer
    primary key,
  minor_version text
    not null,
  postgis_version integer
);
grant all    on postgresql."Version" to aoadmin;
grant select on postgresql."Version" to aoserv_app;
