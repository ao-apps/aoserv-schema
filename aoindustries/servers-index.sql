create index servers_operating_system_version_idx on servers (
  operating_system_version
);
create unique index servers_accounting_name_uni on servers (
  accounting,
  "name"
);
create unique index servers_resource_type_super on servers (
  resource_type,
  resource
);
create unique index servers_accounting_super on servers (
  accounting,
  resource
);
create unique index servers_farm_super on servers (
  farm,
  resource
);
