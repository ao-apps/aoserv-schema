-- Initial Data
begin;
-- XLITE667
insert into "net/reputation"."ReputationLimiterClass" values (
    1,
    1,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    2,
    1,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    3,
    1,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    4,
    1,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    5,
    1,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    6,
    1,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    7,
    1,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    8,
    1,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- EMORTALZ
insert into "net/reputation"."ReputationLimiterClass" values (
    9,
    2,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    10,
    2,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    11,
    2,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    12,
    2,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    13,
    2,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    14,
    2,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    15,
    2,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    16,
    2,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- PROJECT_LA
insert into "net/reputation"."ReputationLimiterClass" values (
    17,
    3,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    18,
    3,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    19,
    3,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    20,
    3,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    21,
    3,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    22,
    3,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    23,
    3,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    24,
    3,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    57,
    8,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    58,
    8,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    59,
    8,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    60,
    8,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    61,
    8,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    62,
    8,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    63,
    8,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    64,
    8,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2500,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    65,
    9,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    66,
    9,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    67,
    9,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    68,
    9,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    69,
    9,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    70,
    9,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    71,
    9,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    72,
    9,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    113,
    15,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    114,
    15,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    115,
    15,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    116,
    15,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    117,
    15,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    118,
    15,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    119,
    15,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    120,
    15,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    121,
    16,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    122,
    16,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    123,
    16,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    124,
    16,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    125,
    16,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    126,
    16,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    127,
    16,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    128,
    16,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- RUNEREBE
insert into "net/reputation"."ReputationLimiterClass" values (
    25,
    4,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    26,
    4,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    27,
    4,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    28,
    4,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    29,
    4,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    30,
    4,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    31,
    4,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    32,
    4,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    193,
    22,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    194,
    22,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    195,
    22,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    196,
    22,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    197,
    22,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    198,
    22,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    199,
    22,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    200,
    22,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    201,
    23,
    'gm',     -- Manual Good
    10,       -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'minute', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    20,       -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    202,
    23,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    203,
    23,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    204,
    23,
    'bu',     -- Uncertain Bad
    10,       -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'minute', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    20,       -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    205,
    23,
    'gu',     -- Uncertain Good
    10,       -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'minute', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    20,       -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    206,
    23,
    'gd',     -- Definite Good
    10,       -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'minute', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    20,       -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    207,
    23,
    'gn',     -- Network Good
    10,       -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'minute', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    20,       -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    208,
    23,
    'uu',     -- Unknown
    10,       -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'minute', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    20,       -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    209,
    24,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    210,
    24,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    211,
    24,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    212,
    24,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    213,
    24,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    214,
    24,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    215,
    24,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    216,
    24,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- WEBLARA
insert into "net/reputation"."ReputationLimiterClass" values (
    33,
    5,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    34,
    5,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    35,
    5,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    36,
    5,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    37,
    5,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    38,
    5,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    39,
    5,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    40,
    5,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    81,
    11,
    'gm',     -- Manual Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    82,
    11,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    83,
    11,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    84,
    11,
    'bu',     -- Uncertain Bad
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    85,
    11,
    'gu',     -- Uncertain Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    86,
    11,
    'gd',     -- Definite Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    87,
    11,
    'gn',     -- Network Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    88,
    11,
    'uu',     -- Unknown
    'gm',     -- Manual Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    97,
    13,
    'gm',     -- Manual Good
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    98,
    13,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    99,
    13,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    100,
    13,
    'bu',     -- Uncertain Bad
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    101,
    13,
    'gu',     -- Uncertain Good
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    102,
    13,
    'gd',     -- Definite Good
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    103,
    13,
    'gn',     -- Network Good
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    104,
    13,
    'uu',     -- Unknown
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
-- LOSTHOPERSPS
insert into "net/reputation"."ReputationLimiterClass" values (
    41,
    6,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    42,
    6,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    43,
    6,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    44,
    6,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    45,
    6,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    46,
    6,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    47,
    6,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    48,
    6,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- GTAPOLICEMODS
insert into "net/reputation"."ReputationLimiterClass" values (
    49,
    7,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    50,
    7,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    51,
    7,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    52,
    7,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    53,
    7,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    54,
    7,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    55,
    7,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    56,
    7,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- SERVER9803
insert into "net/reputation"."ReputationLimiterClass" values (
    73,
    10,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    74,
    10,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    75,
    10,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    76,
    10,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    77,
    10,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    78,
    10,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    79,
    10,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    80,
    10,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    89,
    12,
    'gm',     -- Manual Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    90,
    12,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    91,
    12,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    92,
    12,
    'bu',     -- Uncertain Bad
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    93,
    12,
    'gu',     -- Uncertain Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    94,
    12,
    'gd',     -- Definite Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    95,
    12,
    'gn',     -- Network Good
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    96,
    12,
    'uu',     -- Unknown
    2,       -- syn_per_ip_burst
    1,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    20,      -- syn_burst
    10,      -- syn_rate
    'second', -- syn_unit
    20,     -- packet_per_ip_burst
    10,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2000,    -- packet_burst
    1000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    105,
    14,
    'gm',     -- Manual Good
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    106,
    14,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    107,
    14,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    108,
    14,
    'bu',     -- Uncertain Bad
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    109,
    14,
    'gu',     -- Uncertain Good
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    110,
    14,
    'gd',     -- Definite Good
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    111,
    14,
    'gn',     -- Network Good
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    112,
    14,
    'uu',     -- Unknown
    40,       -- syn_per_ip_burst
    4,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    200,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    50,     -- packet_per_ip_burst
    20,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    400,    -- packet_burst
    200,    -- packet_rate
    'second'  -- packet_unit
);
-- GATEWAYNS_COM_2
insert into "net/reputation"."ReputationLimiterClass" values (
    129,
    17,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    130,
    17,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    131,
    17,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    132,
    17,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    133,
    17,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    134,
    17,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    135,
    17,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    136,
    17,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    137,
    18,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    138,
    18,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    139,
    18,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    140,
    18,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    141,
    18,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    142,
    18,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    143,
    18,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    144,
    18,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    145,
    19,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    146,
    19,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    147,
    19,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    148,
    19,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    149,
    19,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    150,
    19,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    151,
    19,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    152,
    19,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    153,
    20,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    154,
    20,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    155,
    20,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    156,
    20,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    157,
    20,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    158,
    20,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    159,
    20,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    160,
    20,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    161,
    21,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    162,
    21,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    163,
    21,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    164,
    21,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    165,
    21,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    166,
    21,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    167,
    21,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    168,
    21,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- MCRP
insert into "net/reputation"."ReputationLimiterClass" values (
    217,
    25,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    218,
    25,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    219,
    25,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    220,
    25,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    221,
    25,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    222,
    25,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    223,
    25,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    224,
    25,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    225,
    26,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    226,
    26,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    227,
    26,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    228,
    26,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    229,
    26,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    230,
    26,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    231,
    26,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    232,
    26,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    233,
    27,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    234,
    27,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    235,
    27,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    236,
    27,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    237,
    27,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    238,
    27,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    239,
    27,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    240,
    27,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    241,
    28,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    242,
    28,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    243,
    28,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    244,
    28,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    245,
    28,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    246,
    28,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    247,
    28,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    248,
    28,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- NAPIHOST_COM
insert into "net/reputation"."ReputationLimiterClass" values (
    249,
    29,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    250,
    29,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    251,
    29,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    252,
    29,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    253,
    29,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    254,
    29,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    255,
    29,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    256,
    29,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    257,
    30,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    258,
    30,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    259,
    30,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    260,
    30,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    261,
    30,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    262,
    30,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    263,
    30,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    264,
    30,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- WEB_MCRP
insert into "net/reputation"."ReputationLimiterClass" values (
    265,
    31,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    266,
    31,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    267,
    31,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    268,
    31,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    269,
    31,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    270,
    31,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    271,
    31,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    272,
    31,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    273,
    32,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    274,
    32,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    275,
    32,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    276,
    32,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    277,
    32,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    278,
    32,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    279,
    32,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    280,
    32,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    281,
    33,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    282,
    33,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    283,
    33,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    284,
    33,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    285,
    33,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    286,
    33,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    287,
    33,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    288,
    33,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    289,
    34,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    290,
    34,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    291,
    34,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    292,
    34,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    293,
    34,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    294,
    34,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    295,
    34,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    296,
    34,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    297,
    35,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    298,
    35,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    299,
    35,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    300,
    35,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    301,
    35,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    302,
    35,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    303,
    35,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    304,
    35,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    305,
    36,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    306,
    36,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    307,
    36,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    308,
    36,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    309,
    36,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    310,
    36,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    311,
    36,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    312,
    36,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- VHF
insert into "net/reputation"."ReputationLimiterClass" values (
    313,
    37,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    314,
    37,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    315,
    37,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    316,
    37,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    317,
    37,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    318,
    37,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    319,
    37,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    320,
    37,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    321,
    38,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    322,
    38,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    323,
    38,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    324,
    38,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    325,
    38,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    326,
    38,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    327,
    38,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    328,
    38,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    329,
    39,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    330,
    39,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    331,
    39,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    332,
    39,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    333,
    39,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    334,
    39,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    335,
    39,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    336,
    39,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    337,
    40,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    338,
    40,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    339,
    40,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    340,
    40,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    341,
    40,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    342,
    40,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    343,
    40,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    344,
    40,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    345,
    41,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    346,
    41,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    347,
    41,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    348,
    41,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    349,
    41,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    350,
    41,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    351,
    41,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    352,
    41,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    353,
    42,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    354,
    42,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    355,
    42,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    356,
    42,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    357,
    42,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    358,
    42,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    359,
    42,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    360,
    42,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- LB3_CK101_COM
insert into "net/reputation"."ReputationLimiterClass" values (
    361,
    43,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    362,
    43,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    363,
    43,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    364,
    43,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    365,
    43,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    366,
    43,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    367,
    43,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    368,
    43,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    369,
    44,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    370,
    44,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    371,
    44,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    372,
    44,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    373,
    44,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    374,
    44,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    375,
    44,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    376,
    44,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    377,
    45,
    'gm',     -- Manual Good
    2000,     -- syn_per_ip_burst
    1000,     -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    10000,    -- syn_burst
    10000,    -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    378,
    45,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    379,
    45,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    380,
    45,
    'bu',     -- Uncertain Bad
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    100,      -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    200,      -- packet_burst
    100,      -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    381,
    45,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    10000,    -- syn_burst
    10000,    -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    382,
    45,
    'gd',     -- Definite Good
    2000,     -- syn_per_ip_burst
    1000,     -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    10000,    -- syn_burst
    10000,    -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    383,
    45,
    'gn',     -- Network Good
    2000,       -- syn_per_ip_burst
    1000,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,     -- syn_per_ip_size
    10000,    -- syn_burst
    10000,    -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    384,
    45,
    'uu',     -- Unknown
    2000,     -- syn_per_ip_burst
    1000,     -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    10000,    -- syn_per_ip_size
    10000,    -- syn_burst
    10000,    -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- CHANGEME_COM
insert into "net/reputation"."ReputationLimiterClass" values (
    385,
    46,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    386,
    46,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    387,
    46,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    388,
    46,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    389,
    46,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    390,
    46,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    391,
    46,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    392,
    46,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    393,
    47,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    394,
    47,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    395,
    47,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    396,
    47,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    397,
    47,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    398,
    47,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    399,
    47,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    400,
    47,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    2500,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    401,
    48,
    'gm',     -- Manual Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    402,
    48,
    'bm',     -- Manual Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    403,
    48,
    'bd',     -- Definite Bad
    0,        -- syn_per_ip_burst
    0,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    0,        -- syn_per_ip_size
    0,        -- syn_burst
    0,        -- syn_rate
    'second', -- syn_unit
    0,        -- packet_per_ip_burst
    0,        -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    0,        -- packet_per_ip_size
    0,        -- packet_burst
    0,        -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    404,
    48,
    'bu',     -- Uncertain Bad
    2,        -- syn_per_ip_burst
    1,        -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    100,      -- syn_per_ip_size
    10,       -- syn_burst
    10,       -- syn_rate
    'second', -- syn_unit
    200,      -- packet_per_ip_burst
    100,      -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    1000,     -- packet_per_ip_size
    1000,     -- packet_burst
    1000,     -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    405,
    48,
    'gu',     -- Uncertain Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    406,
    48,
    'gd',     -- Definite Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    407,
    48,
    'gn',     -- Network Good
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into "net/reputation"."ReputationLimiterClass" values (
    408,
    48,
    'uu',     -- Unknown
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
select setval('"net/reputation"."net/reputation"."ReputationLimiterClass"_pkey_seq', 409, false);
commit;
