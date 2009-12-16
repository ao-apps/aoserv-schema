create index resources_owner_idx on resources (
  owner
);
create index resources_resource_type_idx on resources (
  resource_type
);
create index resources_created_by_idx on resources (
  created_by
);
create index resources_disable_log_idx on resources (
  disable_log
);
-- Intentional superkey used to enforce resource_type matches between tables
create unique index resources_superkey_uni on resources (
  pkey,
  resource_type
);
