create sequence         "net/reputation"."ReputationLimiterSet_pkey_seq" cycle;
grant all            on "net/reputation"."ReputationLimiterSet_pkey_seq" to aoadmin;
--grant select, update on "net/reputation"."ReputationLimiterSet_pkey_seq" to aoserv_app;

-- Each limiter may use one or more sets of reputation.
-- They are matched in the order listed.

create table "net/reputation"."ReputationLimiterSet" (
  pkey integer
    default nextval('"net/reputation"."ReputationLimiterSet_pkey_seq"')
    primary key,
  limiter integer not null,
  "set" integer not null,
  unique("set", limiter),
  sort_order smallint not null,
  unique(limiter, sort_order)
);
grant all    on "net/reputation"."ReputationLimiterSet" to aoadmin;
grant select on "net/reputation"."ReputationLimiterSet" to aoserv_app;
