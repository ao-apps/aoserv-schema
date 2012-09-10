create sequence ip_reputation_limiter_sets_pkey_seq cycle;
grant all on ip_reputation_limiter_sets_pkey_seq to aoadmin;
--grant select, update on ip_reputation_limiter_sets_pkey_seq to aoserv_app;

-- Each limiter may use one or more sets of reputation.
-- They are matched in the order listed.

create table ip_reputation_limiter_sets (
  pkey integer
    default nextval('ip_reputation_limiter_sets_pkey_seq')
    constraint ip_reputation_limiter_sets_pkey primary key,
  limiter integer not null,
  "set" integer not null,
  unique(limiter, "set"),
  sort_order smallint not null,
  unique(limiter, sort_order)
);
grant all on ip_reputation_limiter_sets to aoadmin;
grant select on ip_reputation_limiter_sets to aoserv_app;

-- Initial Data
insert into ip_reputation_limiter_sets values (
    1,
    1,
    (select pkey from ip_reputation_sets where identifier='xlite_users_43594'),
    1
);
insert into ip_reputation_limiter_sets values (
    2,
    1,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
select setval('ip_reputation_limiter_sets_pkey_seq', 3, false);
