-- Initial Data
begin;
-- XLITE667
insert into "net/reputation"."Limiter" values (
    1,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='xlite667.com') and "deviceID"='eth0'),
    'Default',
    null
);
-- EMORTALZ
insert into "net/reputation"."Limiter" values (
    2,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='emortalz') and "deviceID"='eth0'),
    'Default',
    null
);
-- PROJECT_LA
insert into "net/reputation"."Limiter" values (
    3,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    8,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'SA-MP',
    null
);
insert into "net/reputation"."Limiter" values (
    9,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'TeamSpeak',
    null
);
insert into "net/reputation"."Limiter" values (
    15,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'HTTP',
    null
);
insert into "net/reputation"."Limiter" values (
    16,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='pla.project-la.com') and "deviceID"='eth0'),
    'nameservers',
    null
);
-- RUNEREBE
insert into "net/reputation"."Limiter" values (
    4,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='319543.runerebe.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    22,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='319543.runerebe.com') and "deviceID"='eth0'),
    'RDP',
    null
);
insert into "net/reputation"."Limiter" values (
    23,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='319543.runerebe.com') and "deviceID"='eth0'),
    'RSPS',
    null
);
insert into "net/reputation"."Limiter" values (
    24,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='319543.runerebe.com') and "deviceID"='eth0'),
    'Minecraft',
    null
);
-- WEBLARA
insert into "net/reputation"."Limiter" values (
    5,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='weblara.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    11,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='weblara.com') and "deviceID"='eth0'),
    'theforgottenserver',
    null
);
insert into "net/reputation"."Limiter" values (
    13,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='weblara.com') and "deviceID"='eth0'),
    'HTTP',
    null
);
-- LOSTHOPERSPS
insert into "net/reputation"."Limiter" values (
    6,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='server.losthopersps.com') and "deviceID"='eth0'),
    'Default',
    null
);
-- GTAPOLICEMODS
insert into "net/reputation"."Limiter" values (
    7,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='server.gtapolicemods.com') and "deviceID"='eth0'),
    'Default',
    null
);
-- SERVER9803
insert into "net/reputation"."Limiter" values (
    10,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='server9803') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    12,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='server9803') and "deviceID"='eth0'),
    'theforgottenserver',
    null
);
insert into "net/reputation"."Limiter" values (
    14,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='server9803') and "deviceID"='eth0'),
    'HTTP',
    null
);
-- GATEWAYNS_COM_2
insert into "net/reputation"."Limiter" values (
    17,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    18,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'DNS',
    null
);
insert into "net/reputation"."Limiter" values (
    19,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'HTTP',
    null
);
insert into "net/reputation"."Limiter" values (
    20,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'SSH',
    null
);
insert into "net/reputation"."Limiter" values (
    21,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='gatewayns.com') and "deviceID"='eth0'),
    'SOCKS',
    null
);
-- MCRP
insert into "net/reputation"."Limiter" values (
    25,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='mcrp') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    26,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='mcrp') and "deviceID"='eth0'),
    'SA-MP',
    null
);
insert into "net/reputation"."Limiter" values (
    27,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='mcrp') and "deviceID"='eth0'),
    'TeamSpeak',
    null
);
insert into "net/reputation"."Limiter" values (
    28,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='mcrp') and "deviceID"='eth0'),
    'HTTP',
    null
);
-- NAPIHOST_COM
insert into "net/reputation"."Limiter" values (
    29,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='napihost.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    30,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='napihost.com') and "deviceID"='eth0'),
    'Camfrog',
    null
);
-- WEB_MCRP
insert into "net/reputation"."Limiter" values (
    31,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    32,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'SSH',
    null
);
insert into "net/reputation"."Limiter" values (
    33,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'HTTP',
    null
);
insert into "net/reputation"."Limiter" values (
    34,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'SMTP',
    null
);
insert into "net/reputation"."Limiter" values (
    35,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'Mail',
    null
);
insert into "net/reputation"."Limiter" values (
    36,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='web.mcrp') and "deviceID"='eth0'),
    'nameservers',
    null
);
-- VHF
insert into "net/reputation"."Limiter" values (
    37,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    38,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'SSH',
    null
);
insert into "net/reputation"."Limiter" values (
    39,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'HTTP',
    null
);
insert into "net/reputation"."Limiter" values (
    40,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'SMTP',
    null
);
insert into "net/reputation"."Limiter" values (
    41,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'Mail',
    null
);
insert into "net/reputation"."Limiter" values (
    42,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='vhf') and "deviceID"='eth0'),
    'nameservers',
    null
);
-- LB3_CK101_COM
insert into "net/reputation"."Limiter" values (
    43,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='lb3.ck101.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    44,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='lb3.ck101.com') and "deviceID"='eth0'),
    'SSH',
    null
);
insert into "net/reputation"."Limiter" values (
    45,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='lb3.ck101.com') and "deviceID"='eth0'),
    'HTTP',
    null
);
-- CHANGEME_COM
insert into "net/reputation"."Limiter" values (
    46,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='www1.fc.changeme.com') and "deviceID"='eth0'),
    'Default',
    null
);
insert into "net/reputation"."Limiter" values (
    47,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='www1.fc.changeme.com') and "deviceID"='eth0'),
    'SA-MP',
    null
);
insert into "net/reputation"."Limiter" values (
    48,
    (select id from net."Device" where server=(select id from net."Host" where package=308 and "name"='www1.fc.changeme.com') and "deviceID"='eth0'),
    'TeamSpeak',
    null
);
select setval('"net/reputation"."Limiter_id_seq"', 49, false);
commit;
