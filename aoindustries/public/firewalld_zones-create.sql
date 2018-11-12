create sequence firewalld_zones_pkey_seq cycle;
grant all on firewalld_zones_pkey_seq to aoadmin;
-- grant select on firewalld_zones_pkey_seq to aoserv_app;

create table firewalld_zones (
  pkey integer
    default nextval('firewalld_zones_pkey_seq')
    constraint firewalld_zones_pkey primary key,
  server integer
    not null,
  "name" text
    not null,
  short text,
  description text,
  fail2ban boolean
    not null
    default "name" in ('dmz', 'external', 'public'),
  unique(server, "name")
);
grant all on firewalld_zones to aoadmin;
grant select on firewalld_zones to aoserv_app;
