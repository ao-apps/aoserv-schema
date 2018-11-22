create index "Site_package_fkey" on web."Site" (
  package
);
create index "Site_linux_account_fkey" on web."Site" (
  linux_account
);
create index "Site_linux_group_fkey" on web."Site" (
  linux_group
);
create index "Site_disable_log_fkey" on web."Site" (
  disable_log
);
create index "Site_php_version_fkey" on web."Site" (
  php_version
);
