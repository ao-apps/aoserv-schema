create unique index business_administrator_roles_uni on business_administrator_roles (
  username, "role"
);
create index business_administrator_roles_role_idx on business_administrator_roles (
  "role"
);
