create index "LinuxGroup_package_fkey" on linux."LinuxGroup" (
  package
);
create index "LinuxGroup_type_fkey" on linux."LinuxGroup" (
  "type"
);
