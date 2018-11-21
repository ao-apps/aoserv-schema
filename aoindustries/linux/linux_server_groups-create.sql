create sequence         linux.linux_server_groups_pkey_seq cycle;
grant all            on linux.linux_server_groups_pkey_seq to aoadmin;
grant select, update on linux.linux_server_groups_pkey_seq to aoserv_app;

create table linux_server_groups (
  pkey integer
    default nextval('linux.linux_server_groups_pkey_seq')
    primary key,
  name text
    not null,
  ao_server integer
    not null,
  gid integer
    not null,
  created timestamp with time zone
    not null
    default now(),
  unique(name, ao_server),
  unique(ao_server, gid)
);
grant all                            on linux_server_groups to aoadmin;
grant select, insert, update, delete on linux_server_groups to aoserv_app;
