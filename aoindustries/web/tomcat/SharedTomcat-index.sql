create index "SharedTomcat_version_fkey" on "web/tomcat"."SharedTomcat" (
  version
);
create index "SharedTomcat_linux_server_account_fkey" on "web/tomcat"."SharedTomcat" (
  linux_server_account
);
create index "SharedTomcat_linux_server_group_fkey" on "web/tomcat"."SharedTomcat" (
  linux_server_group
);
create index "SharedTomcat_disable_log_fkey" on "web/tomcat"."SharedTomcat" (
  disable_log
);
