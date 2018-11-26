create sequence         master."AdministratorPermission_id_seq" cycle;   
grant all            on master."AdministratorPermission_id_seq" to aoadmin;
grant select, update on master."AdministratorPermission_id_seq" to aoserv_app;

create table master."AdministratorPermission" (
  id integer
    default nextval('master."AdministratorPermission_id_seq"')
    primary key,
  username text
    not null,
  "permission" text
    not null,
  unique(username, "permission")
);
grant all                    on master."AdministratorPermission" to aoadmin;
grant select, insert, delete on master."AdministratorPermission" to aoserv_app;
