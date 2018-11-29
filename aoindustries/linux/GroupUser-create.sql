create sequence         linux."GroupUser_id_seq" cycle;
grant all            on linux."GroupUser_id_seq" to aoadmin;
grant select, update on linux."GroupUser_id_seq" to aoserv_app;

create table linux."GroupUser" (
  id integer
    default nextval('linux."GroupUser_id_seq"')
    primary key,
  "group" text
    not null,
  "user" text
    not null,
  "isPrimary" boolean
    not null,
  "operatingSystemVersion" integer
);

grant all                            on linux."GroupUser" to aoadmin;
grant select, insert, update, delete on linux."GroupUser" to aoserv_app;
