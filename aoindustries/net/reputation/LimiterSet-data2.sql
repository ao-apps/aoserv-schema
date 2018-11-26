-- Initial Data
begin;
-- XLITE667
insert into "net.reputation"."LimiterSet" values (
    1,
    1,
    (select id from "net.reputation"."Set" where identifier='xlite_users_43594'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    2,
    1,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- EMORTALZ
insert into "net.reputation"."LimiterSet" values (
    3,
    2,
    (select id from "net.reputation"."Set" where identifier='emortalz'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    4,
    2,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- PROJECT_LA
insert into "net.reputation"."LimiterSet" values (
    5,
    3,
    (select id from "net.reputation"."Set" where identifier='pla'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    6,
    3,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    23,
    8,
    (select id from "net.reputation"."Set" where identifier='pla'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    24,
    8,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    25,
    9,
    (select id from "net.reputation"."Set" where identifier='pla'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    26,
    9,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    27,
    15,
    (select id from "net.reputation"."Set" where identifier='pla'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    28,
    15,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    29,
    16,
    (select id from "net.reputation"."Set" where identifier='pla'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    30,
    16,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- RUNEREBE
insert into "net.reputation"."LimiterSet" values (
    7,
    4,
    (select id from "net.reputation"."Set" where identifier='runerebe'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    8,
    4,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    41,
    22,
    (select id from "net.reputation"."Set" where identifier='runerebe'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    42,
    22,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    43,
    23,
    (select id from "net.reputation"."Set" where identifier='runerebe'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    44,
    23,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    45,
    24,
    (select id from "net.reputation"."Set" where identifier='runerebe'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    46,
    24,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- WEBLARA
insert into "net.reputation"."LimiterSet" values (
    9,
    5,
    (select id from "net.reputation"."Set" where identifier='weblara'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    10,
    5,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    17,
    11,
    (select id from "net.reputation"."Set" where identifier='weblara'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    18,
    11,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    21,
    13,
    (select id from "net.reputation"."Set" where identifier='weblara'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    22,
    13,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- LOSTHOPERSPS
insert into "net.reputation"."LimiterSet" values (
    11,
    6,
    (select id from "net.reputation"."Set" where identifier='losthopersps'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    12,
    6,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- GTAPOLICEMODS
insert into "net.reputation"."LimiterSet" values (
    13,
    7,
    (select id from "net.reputation"."Set" where identifier='gtapolicemods'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    14,
    7,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- SERVER9803
insert into "net.reputation"."LimiterSet" values (
    15,
    10,
    (select id from "net.reputation"."Set" where identifier='server9803'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    16,
    10,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    19,
    12,
    (select id from "net.reputation"."Set" where identifier='server9803'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    20,
    12,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    21,
    14,
    (select id from "net.reputation"."Set" where identifier='server9803'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    22,
    14,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- GATEWAYNS_COM_2
insert into "net.reputation"."LimiterSet" values (
    31,
    17,
    (select id from "net.reputation"."Set" where identifier='gatewayns'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    32,
    17,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    33,
    18,
    (select id from "net.reputation"."Set" where identifier='gatewayns'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    34,
    18,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    35,
    19,
    (select id from "net.reputation"."Set" where identifier='gatewayns'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    36,
    19,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    37,
    20,
    (select id from "net.reputation"."Set" where identifier='gatewayns'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    38,
    20,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    39,
    21,
    (select id from "net.reputation"."Set" where identifier='gatewayns'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    40,
    21,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- MCRP
insert into "net.reputation"."LimiterSet" values (
    47,
    25,
    (select id from "net.reputation"."Set" where identifier='mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    48,
    25,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    49,
    26,
    (select id from "net.reputation"."Set" where identifier='mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    50,
    26,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    51,
    27,
    (select id from "net.reputation"."Set" where identifier='mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    52,
    27,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    53,
    28,
    (select id from "net.reputation"."Set" where identifier='mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    54,
    28,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- NAPIHOST_COM
insert into "net.reputation"."LimiterSet" values (
    55,
    29,
    (select id from "net.reputation"."Set" where identifier='napihost'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    56,
    29,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    57,
    30,
    (select id from "net.reputation"."Set" where identifier='napihost'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    58,
    30,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- WEB_MCRP
insert into "net.reputation"."LimiterSet" values (
    59,
    31,
    (select id from "net.reputation"."Set" where identifier='web_mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    60,
    31,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    61,
    32,
    (select id from "net.reputation"."Set" where identifier='web_mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    62,
    32,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    63,
    33,
    (select id from "net.reputation"."Set" where identifier='web_mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    64,
    33,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    65,
    34,
    (select id from "net.reputation"."Set" where identifier='web_mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    66,
    34,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    67,
    35,
    (select id from "net.reputation"."Set" where identifier='web_mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    68,
    35,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    69,
    36,
    (select id from "net.reputation"."Set" where identifier='web_mcrp'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    70,
    36,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- VHF
insert into "net.reputation"."LimiterSet" values (
    71,
    37,
    (select id from "net.reputation"."Set" where identifier='vhf'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    72,
    37,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    73,
    38,
    (select id from "net.reputation"."Set" where identifier='vhf'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    74,
    38,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    75,
    39,
    (select id from "net.reputation"."Set" where identifier='vhf'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    76,
    39,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    77,
    40,
    (select id from "net.reputation"."Set" where identifier='vhf'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    78,
    40,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    79,
    41,
    (select id from "net.reputation"."Set" where identifier='vhf'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    80,
    41,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    81,
    42,
    (select id from "net.reputation"."Set" where identifier='vhf'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    82,
    42,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- LB3_CK101_COM
insert into "net.reputation"."LimiterSet" values (
    83,
    43,
    (select id from "net.reputation"."Set" where identifier='ck101'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    84,
    43,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    85,
    44,
    (select id from "net.reputation"."Set" where identifier='ck101'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    86,
    44,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    87,
    45,
    (select id from "net.reputation"."Set" where identifier='ck101'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    88,
    45,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
-- CHANGEME_COM
insert into "net.reputation"."LimiterSet" values (
    89,
    46,
    (select id from "net.reputation"."Set" where identifier='changeme'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    90,
    46,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    91,
    47,
    (select id from "net.reputation"."Set" where identifier='changeme'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    92,
    47,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
insert into "net.reputation"."LimiterSet" values (
    93,
    48,
    (select id from "net.reputation"."Set" where identifier='changeme'),
    1
);
insert into "net.reputation"."LimiterSet" values (
    94,
    48,
    (select id from "net.reputation"."Set" where identifier='global'),
    2
);
select setval('"net.reputation"."net.reputation"."LimiterSet"_id_seq', 95, false);
commit;
