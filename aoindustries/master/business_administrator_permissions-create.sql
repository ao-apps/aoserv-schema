create sequence         master.business_administrator_permissions_pkey_seq cycle;   
grant all            on master.business_administrator_permissions_pkey_seq to aoadmin;
grant select, update on master.business_administrator_permissions_pkey_seq to aoserv_app;

create table business_administrator_permissions (
  pkey integer
    default nextval('master.business_administrator_permissions_pkey_seq')
    primary key,
  username text
    not null,
  "permission" text
    not null,
  unique(username, "permission")
);
grant all                    on business_administrator_permissions to aoadmin;
grant select, insert, delete on business_administrator_permissions to aoserv_app;
