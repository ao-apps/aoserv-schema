/* TODO
create sequence         "net/reputation".ip_reputation_limiter_manual_sets_pkey_seq cycle;
grant all            on "net/reputation".ip_reputation_limiter_manual_sets_pkey_seq to aoadmin;
--grant select, update on "net/reputation".ip_reputation_limiter_manual_sets_pkey_seq to aoserv_app;

-- Each limiter may use one or more manual sets for whitelist or blacklist.
-- The order is: 1) Whitelist 2) Blacklist 3) Reputation-based

create table ip_reputation_limiter_manual_sets (
  pkey integer
    default nextval('"net/reputation".ip_reputation_limiter_manual_sets_pkey_seq')
    primary key,
  limiter integer not null,
  "set" integer not null,
  "class" text not null check ("class" in ('gm', 'bm')), -- values match net/reputation.ReputationLimiterClass
  unique(limiter, "set")
);
grant all    on ip_reputation_limiter_manual_sets to aoadmin;
grant select on ip_reputation_limiter_manual_sets to aoserv_app;
 */
