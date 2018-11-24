create sequence         linux."LinuxGroupServer_pkey_seq" cycle;
grant all            on linux."LinuxGroupServer_pkey_seq" to aoadmin;
grant select, update on linux."LinuxGroupServer_pkey_seq" to aoserv_app;

create table linux."LinuxGroupServer" (
  pkey integer
    default nextval('linux."LinuxGroupServer_pkey_seq"')
    primary key,
  "name" text
    not null,
  ao_server integer
    not null,
  gid linux."LinuxId"
    not null,
  created timestamp with time zone
    not null
    default now(),
  unique("name", ao_server),
  unique(ao_server, gid)
);
grant all                            on linux."LinuxGroupServer" to aoadmin;
grant select, insert, update, delete on linux."LinuxGroupServer" to aoserv_app;
