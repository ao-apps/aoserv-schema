/* TODO
create sequence         "net/reputation"."ReputationLimiterManualSet_pkey_seq" cycle;
grant all            on "net/reputation"."ReputationLimiterManualSet_sets_pkey_seq" to aoadmin;
--grant select, update on "net/reputation"."ReputationLimiterManualSet_pkey_seq" to aoserv_app;

-- Each limiter may use one or more manual sets for whitelist or blacklist.
-- The order is: 1) Whitelist 2) Blacklist 3) Reputation-based

create table "net/reputation"."ReputationLimiterManualSet" (
  pkey integer
    default nextval('"net/reputation"."ReputationLimiterManualSet_pkey_seq"')
    primary key,
  limiter integer not null,
  "set" integer not null,
  "class" "net/reputation"."ReputationLimiterClass.LimiterClass" not null
    check ("class" in ('gm', 'bm')),
  unique(limiter, "set")
);
grant all    on "net/reputation"."ReputationLimiterManualSet" to aoadmin;
grant select on "net/reputation"."ReputationLimiterManualSet" to aoserv_app;
 */
