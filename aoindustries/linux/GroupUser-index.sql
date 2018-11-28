create unique index "GroupUser_uni_no_osv" on linux."GroupUser" (
  "group",
  username
) where operating_system_version is null;
COMMENT ON index linux."GroupUser_uni_no_osv" IS 'Unique group, user when osv not provided';

create unique index "GroupUser_uni_osv" on linux."GroupUser" (
  "group",
  username,
  operating_system_version
) where operating_system_version is not null;
COMMENT ON index linux."GroupUser_uni_osv" IS 'Unique group, user when osv provided';

-- TODO: How to ensure no duplicate between osv and non-osv?  Trigger?  Indexed materialized view updated by trigger (overkill)?

create index "GroupUser_username_fkey" on linux."GroupUser" (
  username
);

create index "GroupUser_operating_system_version_fkey" on linux."GroupUser" (
  operating_system_version
);
