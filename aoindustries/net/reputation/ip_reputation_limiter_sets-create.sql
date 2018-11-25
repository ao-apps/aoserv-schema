create sequence         "net/reputation".ip_reputation_limiter_sets_pkey_seq cycle;
grant all            on "net/reputation".ip_reputation_limiter_sets_pkey_seq to aoadmin;
--grant select, update on "net/reputation".ip_reputation_limiter_sets_pkey_seq to aoserv_app;

-- Each limiter may use one or more sets of reputation.
-- They are matched in the order listed.

create table ip_reputation_limiter_sets (
  pkey integer
    default nextval('"net/reputation".ip_reputation_limiter_sets_pkey_seq')
    primary key,
  limiter integer not null,
  "set" integer not null,
  unique(limiter, "set"),
  sort_order smallint not null,
  unique(limiter, sort_order)
);
grant all    on ip_reputation_limiter_sets to aoadmin;
grant select on ip_reputation_limiter_sets to aoserv_app;
