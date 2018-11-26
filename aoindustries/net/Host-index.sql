create index "Host_farm_fkey" on net."Host" (
  farm
);
create index "Host_operating_system_version_fkey" on net."Host" (
  operating_system_version
);
create unique index "Host_package_name_uni" on net."Host" (
  package,
  "name"
);
