create index "LinuxUser_shell_fkey" on linux."LinuxUser" (
  shell
);
create index "LinuxUser_type_fkey" on linux."LinuxUser" (
  "type"
);
create index "LinuxUser_disable_log_fkey" on linux."LinuxUser" (
  disable_log
);
