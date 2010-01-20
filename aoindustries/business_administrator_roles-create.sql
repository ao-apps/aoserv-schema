create sequence business_administrator_roles_pkey_seq cycle;
grant all on business_administrator_roles_pkey_seq to aoadmin;
grant select, update on business_administrator_roles_pkey_seq to aoserv_app;

create table business_administrator_roles (
  pkey integer default nextval('business_administrator_roles_pkey_seq') primary key,
  username text not null,
  "role" integer not null
);
grant all on business_administrator_roles to aoadmin;
grant select on business_administrator_roles to aoserv_app;
