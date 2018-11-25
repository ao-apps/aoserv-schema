create index "Server_farm_fkey" on server."Server" (
  farm
);
create index "Server_operating_system_version_fkey" on server."Server" (
  operating_system_version
);
create unique index "Server_package_name_uni" on server."Server" (
  package,
  "name"
);
