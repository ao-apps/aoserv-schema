create sequence         "net/reputation"."LimiterSet_id_seq" cycle;
grant all            on "net/reputation"."LimiterSet_id_seq" to aoadmin;
--grant select, update on "net/reputation"."LimiterSet_id_seq" to aoserv_app;

-- Each limiter may use one or more sets of reputation.
-- They are matched in the order listed.

create table "net/reputation"."LimiterSet" (
  id integer
    default nextval('"net/reputation"."LimiterSet_id_seq"')
    primary key,
  limiter integer not null,
  "set" integer not null,
  unique("set", limiter),
  sort_order smallint not null,
  unique(limiter, sort_order)
);
grant all    on "net/reputation"."LimiterSet" to aoadmin;
grant select on "net/reputation"."LimiterSet" to aoserv_app;
