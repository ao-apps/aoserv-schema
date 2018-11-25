-- Tracks the per-host reputation for one set.
create sequence         "net/reputation"."ReputationSetHost_pkey_seq" cycle;
grant all            on "net/reputation"."ReputationSetHost_pkey_seq" to aoadmin;
grant select, update on "net/reputation"."ReputationSetHost_pkey_seq" to aoserv_app;

create table "net/reputation"."ReputationSetHost" (
  pkey bigint
    default nextval('"net/reputation"."ReputationSetHost_pkey_seq"')
    primary key,
  "set" integer
    not null,
  -- TODO: Switch to "inet" type
  "host" integer -- The big-endian 32-bit IP address.
    not null
    check ("host"!=0),
  good_reputation smallint
    not null
    check (
        good_reputation>=0
        -- and good_reputation<=1023: TODO: Less than max_definite_reputation
    ),
  bad_reputation smallint
    not null
    check (
        bad_reputation>=0
        -- and bad_reputation<=1023: TODO: Less than max_definite_reputation
    ),
  check (
    -- Will be deleted once both decay back to zero
    good_reputation>0
    or bad_reputation>0
  ),
  unique("set", "host")
);
grant all                            on "net/reputation"."ReputationSetHost" to aoadmin;
grant select, insert, update, delete on "net/reputation"."ReputationSetHost" to aoserv_app;
