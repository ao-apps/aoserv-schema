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
insert into ip_reputation_limiters values (
    8,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='pla.project-la.com') and device_id='eth0'),
    'SA-MP',
    null
);
insert into ip_reputation_limiters values (
    9,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='pla.project-la.com') and device_id='eth0'),
    'TeamSpeak',
    null
);
insert into ip_reputation_limiters values (
    15,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='pla.project-la.com') and device_id='eth0'),
    'HTTP',
    null
);
insert into ip_reputation_limiters values (
    16,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='pla.project-la.com') and device_id='eth0'),
    'nameservers',
    null
);
-- RUNEREBE
insert into ip_reputation_limiters values (
    4,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='319543.runerebe.com') and device_id='eth0'),
    'Default',
    null
);
insert into ip_reputation_limiters values (
    22,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='319543.runerebe.com') and device_id='eth0'),
    'RDP',
    null
);
insert into ip_reputation_limiters values (
    23,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='319543.runerebe.com') and device_id='eth0'),
    'RSPS',
    null
);
insert into ip_reputation_limiters values (
    24,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='319543.runerebe.com') and device_id='eth0'),
    'Minecraft',
    null
);
-- WEBLARA
insert into ip_reputation_limiters values (
    5,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='weblara.com') and device_id='eth0'),
    'Default',
    null
);
insert into ip_reputation_limiters values (
    11,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='weblara.com') and device_id='eth0'),
    'theforgottenserver',
    null
);
insert into ip_reputation_limiters values (
    13,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='weblara.com') and device_id='eth0'),
    'HTTP',
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
-- SERVER9803
insert into ip_reputation_limiters values (
    10,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='server9803') and device_id='eth0'),
    'Default',
    null
);
insert into ip_reputation_limiters values (
    12,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='server9803') and device_id='eth0'),
    'theforgottenserver',
    null
);
insert into ip_reputation_limiters values (
    14,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='server9803') and device_id='eth0'),
    'HTTP',
    null
);
-- GATEWAYNS_COM_2
insert into ip_reputation_limiters values (
    17,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='gatewayns.com') and device_id='eth0'),
    'Default',
    null
);
insert into ip_reputation_limiters values (
    18,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='gatewayns.com') and device_id='eth0'),
    'DNS',
    null
);
insert into ip_reputation_limiters values (
    19,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='gatewayns.com') and device_id='eth0'),
    'HTTP',
    null
);
insert into ip_reputation_limiters values (
    20,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='gatewayns.com') and device_id='eth0'),
    'SSH',
    null
);
insert into ip_reputation_limiters values (
    21,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='gatewayns.com') and device_id='eth0'),
    'SOCKS',
    null
);
-- MCRP
insert into ip_reputation_limiters values (
    25,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='mcrp') and device_id='eth0'),
    'Default',
    null
);
insert into ip_reputation_limiters values (
    26,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='mcrp') and device_id='eth0'),
    'SA-MP',
    null
);
insert into ip_reputation_limiters values (
    27,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='mcrp') and device_id='eth0'),
    'TeamSpeak',
    null
);
insert into ip_reputation_limiters values (
    28,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='mcrp') and device_id='eth0'),
    'HTTP',
    null
);
-- NAPIHOST_COM
insert into ip_reputation_limiters values (
    29,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='napihost.com') and device_id='eth0'),
    'Default',
    null
);
insert into ip_reputation_limiters values (
    30,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='napihost.com') and device_id='eth0'),
    'Camfrog',
    null
);
-- WEB_MCRP
insert into ip_reputation_limiters values (
    31,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='web.mcrp') and device_id='eth0'),
    'Default',
    null
);
insert into ip_reputation_limiters values (
    32,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='web.mcrp') and device_id='eth0'),
    'SSH',
    null
);
insert into ip_reputation_limiters values (
    33,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='web.mcrp') and device_id='eth0'),
    'HTTP',
    null
);
insert into ip_reputation_limiters values (
    34,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='web.mcrp') and device_id='eth0'),
    'SMTP',
    null
);
insert into ip_reputation_limiters values (
    35,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='web.mcrp') and device_id='eth0'),
    'Mail',
    null
);
insert into ip_reputation_limiters values (
    36,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='web.mcrp') and device_id='eth0'),
    'nameservers',
    null
);
-- VHF
insert into ip_reputation_limiters values (
    37,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='vhf') and device_id='eth0'),
    'Default',
    null
);
insert into ip_reputation_limiters values (
    38,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='vhf') and device_id='eth0'),
    'SSH',
    null
);
insert into ip_reputation_limiters values (
    39,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='vhf') and device_id='eth0'),
    'HTTP',
    null
);
insert into ip_reputation_limiters values (
    40,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='vhf') and device_id='eth0'),
    'SMTP',
    null
);
insert into ip_reputation_limiters values (
    41,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='vhf') and device_id='eth0'),
    'Mail',
    null
);
insert into ip_reputation_limiters values (
    42,
    (select pkey from net_devices where server=(select pkey from servers where package=308 and name='vhf') and device_id='eth0'),
    'nameservers',
    null
);
select setval('ip_reputation_limiters_pkey_seq', 43, false);
commit;
