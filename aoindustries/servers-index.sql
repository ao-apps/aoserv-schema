create index servers_farm_idx on servers (
  farm
);
create index servers_operating_system_version_idx on servers (
  operating_system_version
);
create unique index servers_accounting_name_uni on servers (
  accounting,
  name
);
