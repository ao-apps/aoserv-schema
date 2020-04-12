create unique index "GroupUser_uni_no_osv" on linux."GroupUser" (
  "group",
  "user"
) where "operatingSystemVersion" is null;
COMMENT ON index linux."GroupUser_uni_no_osv" IS 'Unique group, user when osv not provided';

create unique index "GroupUser_uni_osv" on linux."GroupUser" (
  "group",
  "user",
  "operatingSystemVersion"
) where "operatingSystemVersion" is not null;
COMMENT ON index linux."GroupUser_uni_osv" IS 'Unique group, user when osv provided';

-- TODO: How to ensure no duplicate between osv and non-osv?  Trigger?  Indexed materialized view updated by trigger (overkill)?

create index "GroupUser_user_fkey" on linux."GroupUser" (
  "user"
);

create index "GroupUser_operatingSystemVersion_fkey" on linux."GroupUser" (
  "operatingSystemVersion"
);
