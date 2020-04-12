create index "Group_package_fkey" on linux."Group" (
  package
);
create index "Group_type_fkey" on linux."Group" (
  "type"
);
