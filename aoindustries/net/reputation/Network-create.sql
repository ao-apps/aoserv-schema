-- Tracks the per-network reputation for one set.
create sequence         "net/reputation"."Network_id_seq" cycle;
grant all            on "net/reputation"."Network_id_seq" to aoadmin;
grant select, update on "net/reputation"."Network_id_seq" to aoserv_app;

create table "net/reputation"."Network" (
  id bigint
    default nextval('"net/reputation"."Network_id_seq"')
    primary key,
  "set" integer
    not null,
  -- TODO: Switch to "cidr" type
  network integer -- The big-endian 32-bit IP address, with zeroes in network range lower bits.
    not null
    check (network!=0),
  counter integer
    not null
    check (counter>0), -- Will be deleted once decays back to zero
  unique("set", network)
);
grant all                            on "net/reputation"."Network" to aoadmin;
grant select, insert, update, delete on "net/reputation"."Network" to aoserv_app;
