create sequence         server."Server_pkey_seq" cycle;
grant all            on server."Server_pkey_seq" to aoadmin;
grant select, update on server."Server_pkey_seq" to aoserv_app;

create table server."Server" (
  pkey integer
    default nextval('server."Server_pkey_seq"')
    primary key,
  farm text
    not null,
  description text not null,
  operating_system_version integer,
  package integer not null,
  "name" text not null check (length("name") > 0 and "name" not like '%/%'),
  monitoring_enabled boolean not null default true
);
grant all                    on server."Server" to aoadmin;
grant select, insert, update on server."Server" to aoserv_app;