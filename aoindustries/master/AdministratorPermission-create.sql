create sequence         master."AdministratorPermission_pkey_seq" cycle;   
grant all            on master."AdministratorPermission_pkey_seq" to aoadmin;
grant select, update on master."AdministratorPermission_pkey_seq" to aoserv_app;

create table master."AdministratorPermission" (
  pkey integer
    default nextval('master."AdministratorPermission_pkey_seq"')
    primary key,
  username text
    not null,
  "permission" text
    not null,
  unique(username, "permission")
);
grant all                    on master."AdministratorPermission" to aoadmin;
grant select, insert, delete on master."AdministratorPermission" to aoserv_app;
