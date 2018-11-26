create sequence "net/reputation"."Limiter_id_seq" cycle;
grant all on    "net/reputation"."Limiter_id_seq" to aoadmin;
--grant select, update on "net/reputation"."Limiter_id_seq" to aoserv_app;

create table "net/reputation"."Limiter" (
  id integer
    default nextval('"net/reputation"."Limiter_id_seq"')
    primary key
    check (
      -- Due to encoding of iptables (and hashlimit) names, may not exceed eight characters
      id between 1 and 99999999
    ),
  net_device integer not null,
  identifier text
    not null
    check (
        -- Although this identifier is only used in a directory name at this time,
        -- its rules are defined to be consistent with net/reputation.Set.
        "net/reputation"."Set.identifier.validate"(identifier) IS NULL
    ),
  unique(net_device, identifier),
  description text
    check (
        description is null
        or (description=trim(description) and length(description)>0)
    )
);
grant all    on "net/reputation"."Limiter" to aoadmin;
grant select on "net/reputation"."Limiter" to aoserv_app;
