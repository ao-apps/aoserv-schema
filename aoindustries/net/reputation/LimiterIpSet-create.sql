/* TODO
create sequence         "net/reputation"."LimiterIpSet_id_seq" cycle;
grant all            on "net/reputation"."LimiterIpSet_id_seq" to aoadmin;
--grant select, update on "net/reputation"."LimiterIpSet_id_seq" to aoserv_app;

-- Each limiter may use one or more manual sets for whitelist or blacklist.
-- The order is: 1) Whitelist 2) Blacklist 3) Reputation-based

create table "net/reputation"."LimiterIpSet" (
  id integer
    default nextval('"net/reputation"."LimiterIpSet_id_seq"')
    primary key,
  limiter integer not null,
  "set" integer not null,
  "class" "net/reputation"."Class" not null
    check ("class" in ('gm', 'bm')),
  unique(limiter, "set")
);
grant all    on "net/reputation"."LimiterIpSet" to aoadmin;
grant select on "net/reputation"."LimiterIpSet" to aoserv_app;
 */
