create sequence operating_system_versions_pkey_seq cycle;
grant all            on operating_system_versions_pkey_seq to aoadmin;
grant select, update on operating_system_versions_pkey_seq to aoserv_app;

create table operating_system_versions (
  pkey integer
    default nextval('operating_system_versions_pkey_seq')
    primary key,
  operating_system text
    not null,
  version_number text
    not null,
  version_name text
    not null,
  architecture text
    not null,
  display text
    not null
    unique,
  is_aoserv_daemon_supported bool
    not null,
  sort_order smallint
    not null
    unique,
  unique(operating_system, version_number, architecture),
  unique(operating_system, version_name, architecture)
);
grant all    on operating_system_versions to aoadmin;
grant select on operating_system_versions to aoserv_app;
