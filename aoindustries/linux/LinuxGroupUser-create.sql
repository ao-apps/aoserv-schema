create sequence         linux."LinuxGroupUser_pkey_seq" cycle;
grant all            on linux."LinuxGroupUser_pkey_seq" to aoadmin;
grant select, update on linux."LinuxGroupUser_pkey_seq" to aoserv_app;

create table linux."LinuxGroupUser" (
  pkey integer
    default nextval('linux."LinuxGroupUser_pkey_seq"')
    primary key,
  "group" text
    not null,
  username text
    not null,
  is_primary boolean
    not null,
  operating_system_version integer
);

grant all                            on linux."LinuxGroupUser" to aoadmin;
grant select, insert, update, delete on linux."LinuxGroupUser" to aoserv_app;
