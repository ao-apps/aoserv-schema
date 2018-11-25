-- Tracks the per-network reputation for one set.
create sequence         "net/reputation"."SetNetwork_pkey_seq" cycle;
grant all            on "net/reputation"."SetNetwork_pkey_seq" to aoadmin;
grant select, update on "net/reputation"."SetNetwork_pkey_seq" to aoserv_app;

create table "net/reputation"."SetNetwork" (
  pkey bigint
    default nextval('"net/reputation"."SetNetwork_pkey_seq"')
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
grant all                            on "net/reputation"."SetNetwork" to aoadmin;
grant select, insert, update, delete on "net/reputation"."SetNetwork" to aoserv_app;
