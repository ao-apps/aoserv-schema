create unique index aoserv_role_permissions_uni on aoserv_role_permissions (
  "role",
  "permission"
);
create index aoserv_role_permissions_permission_idx on aoserv_role_permissions (
  "permission"
);
