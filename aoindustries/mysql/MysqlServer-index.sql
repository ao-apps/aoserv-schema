create index "MysqlServer_version_fkey" on mysql."MysqlServer" (
  version
);
create index "MysqlServer_package_fkey" on mysql."MysqlServer" (
  package
);
