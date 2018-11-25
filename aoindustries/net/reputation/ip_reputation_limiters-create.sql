create sequence "net/reputation".ip_reputation_limiters_pkey_seq cycle;
grant all on    "net/reputation".ip_reputation_limiters_pkey_seq to aoadmin;
--grant select, update on "net/reputation".ip_reputation_limiters_pkey_seq to aoserv_app;

create table ip_reputation_limiters (
  pkey integer
    default nextval('"net/reputation".ip_reputation_limiters_pkey_seq')
    primary key
    check (
      -- Due to encoding of iptables (and hashlimit) names, may not exceed eight characters
      pkey between 1 and 99999999
    ),
  net_device integer not null,
  identifier text
    not null
    check (
        -- Although this identifier is only used in a directory name at this time,
        -- its rules are defined to be consistent with ip_reputation_sets.
        "net/reputation"."validateReputationIdentifier"(identifier) IS NULL
    ),
  unique(net_device, identifier),
  description text
    check (
        description is null
        or (description=trim(description) and length(description)>0)
    )
);
grant all    on ip_reputation_limiters to aoadmin;
grant select on ip_reputation_limiters to aoserv_app;
