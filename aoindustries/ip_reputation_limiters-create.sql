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
begin;
-- XLITE667
insert into ip_reputation_limiters values (
    1,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='xlite667.com') and device_id='eth0'),
    'Default',
    null
);
-- EMORTALZ
insert into ip_reputation_limiters values (
    2,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='emortalz') and device_id='eth0'),
    'Default',
    null
);
-- PROJECT_LA
insert into ip_reputation_limiters values (
    3,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='pla.project-la.com') and device_id='eth0'),
    'Default',
    null
);
-- RUNEREBE
insert into ip_reputation_limiters values (
    4,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='319543.runerebe.com') and device_id='eth0'),
    'Default',
    null
);
-- WEBLARA
insert into ip_reputation_limiters values (
    5,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='weblara.com') and device_id='eth0'),
    'Default',
    null
);
-- LOSTHOPERSPS
insert into ip_reputation_limiters values (
    6,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='server.losthopersps.com') and device_id='eth0'),
    'Default',
    null
);
-- GTAPOLICEMODS
insert into ip_reputation_limiters values (
    7,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='server.gtapolicemods.com') and device_id='eth0'),
    'Default',
    null
);
select setval('ip_reputation_limiters_pkey_seq', 8, false);
commit;
