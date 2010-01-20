create sequence aoserv_role_permissions_pkey_seq cycle;
grant all on aoserv_role_permissions_pkey_seq to aoadmin;
grant select, update on aoserv_role_permissions_pkey_seq to aoserv_app;

create table aoserv_role_permissions (
  pkey integer default nextval('aoserv_role_permissions_pkey_seq') primary key,
  "role" integer not null,
  "permission" text not null
);
grant all on aoserv_role_permissions to aoadmin;
grant select on aoserv_role_permissions to aoserv_app;
