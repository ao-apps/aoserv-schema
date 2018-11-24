create unique index "LinuxGroupUser_uni_no_osv" on linux."LinuxGroupUser" (
  "group",
  username
) where operating_system_version is null;
COMMENT ON index linux."LinuxGroupUser_uni_no_osv" IS 'Unique group, user when osv not provided';

create unique index "LinuxGroupUser_uni_osv" on linux."LinuxGroupUser" (
  "group",
  username,
  operating_system_version
) where operating_system_version is not null;
COMMENT ON index linux."LinuxGroupUser_uni_osv" IS 'Unique group, user when osv provided';

-- TODO: How to ensure no duplicate between osv and non-osv?  Trigger?

create index "LinuxGroupUser_username_fkey" on linux."LinuxGroupUser" (
  username
);

create index "LinuxGroupUser_operating_system_version_fkey" on linux."LinuxGroupUser" (
  operating_system_version
);
