create table aoserv_permissions (
  name text constraint aoserv_permissions_pkey primary key,
  sort_order smallint unique
);
grant all    on aoserv_permissions to aoadmin;
grant select on aoserv_permissions to aoserv_app;
