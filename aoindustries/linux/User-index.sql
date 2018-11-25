create index "User_shell_fkey" on linux."User" (
  shell
);
create index "User_type_fkey" on linux."User" (
  "type"
);
create index "User_disable_log_fkey" on linux."User" (
  disable_log
);
