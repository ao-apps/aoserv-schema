create unique index linux_groups_uni on linux_groups (
  ao_server,
  group_name
);
create unique index linux_groups_linux_group_type_super on linux_groups (
  linux_group_type,
  ao_server_resource
);
create unique index linux_groups_accounting_super on linux_groups (
  accounting,
  ao_server_resource
);
create index linux_groups_accounting_idx on linux_groups (
  accounting,
  group_name
);
create unique index linux_groups_ao_server_super on linux_groups (
  ao_server,
  ao_server_resource
);
create unique index linux_groups_gid_uni on linux_groups (
  gid,
  ao_server
);
-- For reference from linux_account_groups to enforce email_inboxes are all part of mailonly group
create unique index linux_groups_group_name_super on linux_groups (
  group_name,
  ao_server_resource
);
