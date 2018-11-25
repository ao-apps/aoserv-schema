create sequence         "net/reputation"."ReputationLimiterClass_pkey_seq" cycle;
grant all            on "net/reputation"."ReputationLimiterClass_pkey_seq" to aoadmin;
--grant select, update on "net/reputation"."ReputationLimiterClass_pkey_seq" to aoserv_app;

create table "net/reputation"."ReputationLimiterClass" (
  pkey integer
    default nextval('"net/reputation"."ReputationLimiterClass_pkey_seq"')
    primary key,
  limiter integer not null,
  "class" "net/reputation"."ReputationLimiterClass.LimiterClass" not null,
  unique(limiter, "class"),
  syn_per_ip_burst    smallint not null,
  syn_per_ip_rate     smallint not null,
  syn_per_ip_unit     "net/reputation"."ReputationLimiterClass.TimeUnit" not null,
  syn_per_ip_size     smallint not null,
  syn_burst           smallint not null,
  syn_rate            smallint not null,
  syn_unit            "net/reputation"."ReputationLimiterClass.TimeUnit" not null,
  packet_per_ip_burst integer  not null,
  packet_per_ip_rate  integer  not null,
  packet_per_ip_unit  "net/reputation"."ReputationLimiterClass.TimeUnit" not null,
  packet_per_ip_size  integer  not null,
  packet_burst        integer  not null,
  packet_rate         integer  not null,
  packet_unit         "net/reputation"."ReputationLimiterClass.TimeUnit" not null,
  check (
    "net/reputation"."ReputationLimiterClass.validateLimits"(
        "class",
        syn_per_ip_burst,
        syn_per_ip_rate,
        syn_per_ip_unit,
        syn_per_ip_size,
        syn_burst,
        syn_rate,
        syn_unit,
        packet_per_ip_burst,
        packet_per_ip_rate,
        packet_per_ip_unit,
        packet_per_ip_size,
        packet_burst,
        packet_rate,
        packet_unit
    ) IS NULL
  )
);
grant all    on "net/reputation"."ReputationLimiterClass" to aoadmin;
grant select on "net/reputation"."ReputationLimiterClass" to aoserv_app;
