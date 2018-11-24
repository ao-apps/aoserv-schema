create sequence         linux."LinuxGroupAoServer_pkey_seq" cycle;
grant all            on linux."LinuxGroupAoServer_pkey_seq" to aoadmin;
grant select, update on linux."LinuxGroupAoServer_pkey_seq" to aoserv_app;

create table linux."LinuxGroupAoServer" (
  pkey integer
    default nextval('linux."LinuxGroupAoServer_pkey_seq"')
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
grant all                            on linux."LinuxGroupAoServer" to aoadmin;
grant select, insert, update, delete on linux."LinuxGroupAoServer" to aoserv_app;
