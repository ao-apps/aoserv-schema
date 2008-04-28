create index servers_farm_idx on servers (
  farm
);
create index servers_owner_idx on servers (
  owner
);
create index servers_administrator_idx on servers (
  administrator
);
create index servers_operating_system_version_idx on servers (
  operating_system_version
);
create unique index servers_package_name_uni on servers (
  package,
  name
);
