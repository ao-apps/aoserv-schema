create sequence ip_reputation_limiters_pkey_seq cycle;
grant all on ip_reputation_limiters_pkey_seq to aoadmin;
--grant select, update on ip_reputation_limiters_pkey_seq to aoserv_app;

create table ip_reputation_limiters (
  pkey integer
    default nextval('ip_reputation_limiters_pkey_seq')
    constraint ip_reputation_limiters_pkey primary key
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
        isValidIpReputationIdentifier(identifier)
    ),
  unique(net_device, identifier),
  description text
    check (
        description is null
        or (description=trim(description) and length(description)>0)
    )
);
grant all on ip_reputation_limiters to aoadmin;
grant select on ip_reputation_limiters to aoserv_app;

-- Initial Data
insert into ip_reputation_limiters values (
    1,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='xlite667.com') and device_id='eth0'),
    'Default',
    null
);
select setval('ip_reputation_limiters_pkey_seq', 2, false);
