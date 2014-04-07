create sequence technology_versions_pkey_seq cycle;
grant all on technology_versions_pkey_seq to aoadmin;
grant select, update on technology_versions_pkey_seq to aoserv_app;

create table technology_versions (
  pkey integer
    default nextval('technology_versions_pkey_seq')
    constraint technology_versions_pkey primary key,
  name text
    not null,
  version text
    not null
    check (version!='' and version=trim(version)),
  updated timestamp with time zone
    default now()
    not null,
  owner text
    default 'orion'
    not null,
  operating_system_version integer,
  unique(name, version, operating_system_version)
);
grant all on technology_versions to aoadmin;
grant select on technology_versions to aoserv_app;
