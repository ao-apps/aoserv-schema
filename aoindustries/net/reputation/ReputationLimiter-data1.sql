-- Initial Data
begin;
-- XLITE667
insert into "net/reputation"."ReputationLimiter" values (
    1,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='xlite667.com') and "deviceID"='eth0'),
    'Default',
    null
);
-- EMORTALZ
insert into "net/reputation"."ReputationLimiter" values (
    2,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='emortalz') and "deviceID"='eth0'),
    'Default',
    null
);
-- PROJECT_LA
insert into "net/reputation"."ReputationLimiter" values (
    3,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    8,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'SA-MP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    9,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'TeamSpeak',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    15,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'HTTP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    16,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'nameservers',
    null
);
-- RUNEREBE
insert into "net/reputation"."ReputationLimiter" values (
    4,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='319543.runerebe.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    22,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='319543.runerebe.com') and "deviceID"='eth0'),
    'RDP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    23,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='319543.runerebe.com') and "deviceID"='eth0'),
    'RSPS',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    24,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='319543.runerebe.com') and "deviceID"='eth0'),
    'Minecraft',
    null
);
-- WEBLARA
insert into "net/reputation"."ReputationLimiter" values (
    5,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='weblara.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    11,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='weblara.com') and "deviceID"='eth0'),
    'theforgottenserver',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    13,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='weblara.com') and "deviceID"='eth0'),
    'HTTP',
    null
);
-- LOSTHOPERSPS
insert into "net/reputation"."ReputationLimiter" values (
    6,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='server.losthopersps.com') and "deviceID"='eth0'),
    'Default',
    null
);
-- GTAPOLICEMODS
insert into "net/reputation"."ReputationLimiter" values (
    7,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='server.gtapolicemods.com') and "deviceID"='eth0'),
    'Default',
    null
);
-- SERVER9803
insert into "net/reputation"."ReputationLimiter" values (
    10,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='server9803') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    12,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='server9803') and "deviceID"='eth0'),
    'theforgottenserver',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    14,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='server9803') and "deviceID"='eth0'),
    'HTTP',
    null
);
-- GATEWAYNS_COM_2
insert into "net/reputation"."ReputationLimiter" values (
    17,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    18,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'DNS',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    19,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'HTTP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    20,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'SSH',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    21,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'SOCKS',
    null
);
-- MCRP
insert into "net/reputation"."ReputationLimiter" values (
    25,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='mcrp') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    26,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='mcrp') and "deviceID"='eth0'),
    'SA-MP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    27,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='mcrp') and "deviceID"='eth0'),
    'TeamSpeak',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    28,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='mcrp') and "deviceID"='eth0'),
    'HTTP',
    null
);
-- NAPIHOST_COM
insert into "net/reputation"."ReputationLimiter" values (
    29,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='napihost.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    30,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='napihost.com') and "deviceID"='eth0'),
    'Camfrog',
    null
);
-- WEB_MCRP
insert into "net/reputation"."ReputationLimiter" values (
    31,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    32,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'SSH',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    33,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'HTTP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    34,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'SMTP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    35,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'Mail',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    36,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'nameservers',
    null
);
-- VHF
insert into "net/reputation"."ReputationLimiter" values (
    37,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    38,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'SSH',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    39,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'HTTP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    40,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'SMTP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    41,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'Mail',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    42,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'nameservers',
    null
);
-- LB3_CK101_COM
insert into "net/reputation"."ReputationLimiter" values (
    43,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='lb3.ck101.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    44,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='lb3.ck101.com') and "deviceID"='eth0'),
    'SSH',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    45,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='lb3.ck101.com') and "deviceID"='eth0'),
    'HTTP',
    null
);
-- CHANGEME_COM
insert into "net/reputation"."ReputationLimiter" values (
    46,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='www1.fc.changeme.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    47,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='www1.fc.changeme.com') and "deviceID"='eth0'),
    'SA-MP',
    null
);
insert into "net/reputation"."ReputationLimiter" values (
    48,
    (select pkey from net."Device" where server=(select pkey from servers where package=308 and "name"='www1.fc.changeme.com') and "deviceID"='eth0'),
    'TeamSpeak',
    null
);
select setval('"net/reputation"."ReputationLimiter_pkey_seq"', 49, false);
commit;
