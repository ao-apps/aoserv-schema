create table aoserv_permissions (
  "name" text
    primary key,
  sort_order smallint
    not null
    unique
);
grant all    on aoserv_permissions to aoadmin;
grant select on aoserv_permissions to aoserv_app;
