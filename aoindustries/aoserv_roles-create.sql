create sequence aoserv_roles_pkey_seq cycle;
grant all on aoserv_roles_pkey_seq to aoadmin;
grant select, update on aoserv_roles_pkey_seq to aoserv_app;

create table aoserv_roles (
  pkey integer default nextval('aoserv_roles_pkey_seq') primary key,
  accounting text not null,
  "name" text not null,
  unique(accounting, "name")
);
grant all on aoserv_roles to aoadmin;
grant select on aoserv_roles to aoserv_app;
