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
begin;
-- XLITE667
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
-- EMORTALZ
insert into ip_reputation_limiter_sets values (
    3,
    2,
    (select pkey from ip_reputation_sets where identifier='emortalz'),
    1
);
insert into ip_reputation_limiter_sets values (
    4,
    2,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
-- PROJECT_LA
insert into ip_reputation_limiter_sets values (
    5,
    3,
    (select pkey from ip_reputation_sets where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    6,
    3,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    23,
    8,
    (select pkey from ip_reputation_sets where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    24,
    8,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    25,
    9,
    (select pkey from ip_reputation_sets where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    26,
    9,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    27,
    15,
    (select pkey from ip_reputation_sets where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    28,
    15,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    29,
    16,
    (select pkey from ip_reputation_sets where identifier='pla'),
    1
);
insert into ip_reputation_limiter_sets values (
    30,
    16,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
-- RUNEREBE
insert into ip_reputation_limiter_sets values (
    7,
    4,
    (select pkey from ip_reputation_sets where identifier='runerebe'),
    1
);
insert into ip_reputation_limiter_sets values (
    8,
    4,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
-- WEBLARA
insert into ip_reputation_limiter_sets values (
    9,
    5,
    (select pkey from ip_reputation_sets where identifier='weblara'),
    1
);
insert into ip_reputation_limiter_sets values (
    10,
    5,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    17,
    11,
    (select pkey from ip_reputation_sets where identifier='weblara'),
    1
);
insert into ip_reputation_limiter_sets values (
    18,
    11,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    21,
    13,
    (select pkey from ip_reputation_sets where identifier='weblara'),
    1
);
insert into ip_reputation_limiter_sets values (
    22,
    13,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
-- LOSTHOPERSPS
insert into ip_reputation_limiter_sets values (
    11,
    6,
    (select pkey from ip_reputation_sets where identifier='losthopersps'),
    1
);
insert into ip_reputation_limiter_sets values (
    12,
    6,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
-- GTAPOLICEMODS
insert into ip_reputation_limiter_sets values (
    13,
    7,
    (select pkey from ip_reputation_sets where identifier='gtapolicemods'),
    1
);
insert into ip_reputation_limiter_sets values (
    14,
    7,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
-- SERVER9803
insert into ip_reputation_limiter_sets values (
    15,
    10,
    (select pkey from ip_reputation_sets where identifier='server9803'),
    1
);
insert into ip_reputation_limiter_sets values (
    16,
    10,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    19,
    12,
    (select pkey from ip_reputation_sets where identifier='server9803'),
    1
);
insert into ip_reputation_limiter_sets values (
    20,
    12,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
insert into ip_reputation_limiter_sets values (
    21,
    14,
    (select pkey from ip_reputation_sets where identifier='server9803'),
    1
);
insert into ip_reputation_limiter_sets values (
    22,
    14,
    (select pkey from ip_reputation_sets where identifier='global'),
    2
);
select setval('ip_reputation_limiter_sets_pkey_seq', 31, false);
commit;
