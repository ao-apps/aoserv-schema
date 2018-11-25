create sequence         linux."GroupServer_pkey_seq" cycle;
grant all            on linux."GroupServer_pkey_seq" to aoadmin;
grant select, update on linux."GroupServer_pkey_seq" to aoserv_app;

create table linux."GroupServer" (
  pkey integer
    default nextval('linux."GroupServer_pkey_seq"')
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
grant all                            on linux."GroupServer" to aoadmin;
grant select, insert, update, delete on linux."GroupServer" to aoserv_app;
