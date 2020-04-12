create index "SoftwareVersion_owner_fkey" on distribution."SoftwareVersion" (
  owner
);
create index "SoftwareVersion_operating_system_version_fkey" on distribution."SoftwareVersion" (
  operating_system_version
);
