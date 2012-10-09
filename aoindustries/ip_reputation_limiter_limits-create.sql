create sequence ip_reputation_limiter_limits_pkey_seq cycle;
grant all on ip_reputation_limiter_limits_pkey_seq to aoadmin;
--grant select, update on ip_reputation_limiter_limits_pkey_seq to aoserv_app;

-- Based on reputation, traffic is divided into six classes:
--   bd: definite bad
--   bu: uncertain bad
--   gu: uncertain good
--   gd: definite good
--   gn: network good
--   uu: unknown
--
-- For each class, we configure:
--   per-ip max syn/sec
--   max syn/sec
--   per-ip max packets/sec
--   max packets/sec
--
-- Any limit of 0 means to just drop outright
--
-- syn put before packets/sec so that synflood doesn't affect packets/second
-- for non-syn (established connections) within the same class.
--
-- Per-IP limits are added first, so that a massive attack from one IP source will
-- not block all members of that class.

CREATE OR REPLACE FUNCTION isValidIpReputationLimits(
    "class"             text,
    syn_per_ip_burst    smallint,
    syn_per_ip_rate     smallint,
    syn_per_ip_unit     text,
    syn_per_ip_size     smallint,
    syn_burst           smallint,
    syn_rate            smallint,
    syn_unit            text,
    packet_per_ip_burst integer,
    packet_per_ip_rate  integer,
    packet_per_ip_unit  text,
    packet_per_ip_size  integer,
    packet_burst        integer,
    packet_rate         integer,
    packet_unit         text
)
    RETURNS boolean
    AS $$
        BEGIN
            -- Check bounds for each parameter
            -- syn_per_ip
            IF syn_per_ip_unit NOT IN ('second', 'minute', 'hour', 'day') THEN
                RAISE EXCEPTION '% time unit invalid for syn/IP, must be one of ''second'', ''minute'', ''hour'', or ''day'': %', "class", syn_per_ip_unit;
            END IF;
            IF NOT syn_per_ip_burst BETWEEN 0 AND 10000 THEN
                RAISE EXCEPTION '% syn/%/IP burst outside of range, must be between 0 and 10000: %', "class", syn_per_ip_unit, syn_per_ip_burst;
            END IF;
            IF NOT syn_per_ip_rate BETWEEN 0 AND 10000 THEN
                RAISE EXCEPTION '% syn/%/IP outside of range, must be between 0 and 10000: %', "class", syn_per_ip_unit, syn_per_ip_rate;
            END IF;
            IF NOT (syn_per_ip_size=0 OR syn_per_ip_size BETWEEN 10 AND 10000) THEN
                RAISE EXCEPTION '% syn/%/IP size outside of range, must be 0 or between 10 and 10000: %', "class", syn_per_ip_unit, syn_per_ip_size;
            END IF;
            -- syn
            IF syn_unit NOT IN ('second', 'minute', 'hour', 'day') THEN
                RAISE EXCEPTION '% time unit invalid for syn, must be one of ''second'', ''minute'', ''hour'', or ''day'': %', "class", syn_unit;
            END IF;
            IF NOT syn_burst BETWEEN 0 AND 10000 THEN
                RAISE EXCEPTION '% syn/% burst outside of range, must be between 0 and 10000: %', "class", syn_unit, syn_burst;
            END IF;
            IF NOT syn_rate BETWEEN 0 AND 10000 THEN
                RAISE EXCEPTION '% syn/% outside of range, must be between 0 and 10000: %', "class", syn_unit, syn_rate;
            END IF;
            -- packet_per_ip
            IF packet_per_ip_unit NOT IN ('second', 'minute', 'hour', 'day') THEN
                RAISE EXCEPTION '% time unit invalid for packet/IP, must be one of ''second'', ''minute'', ''hour'', or ''day'': %', "class", packet_per_ip_unit;
            END IF;
            IF NOT packet_per_ip_burst BETWEEN 0 AND 100000 THEN
                RAISE EXCEPTION '% packet/%/IP burst outside of range, must be between 0 and 100000: %', "class", packet_per_ip_unit, packet_per_ip_burst;
            END IF;
            IF NOT packet_per_ip_rate BETWEEN 0 AND 100000 THEN
                RAISE EXCEPTION '% packet/%/IP outside of range, must be between 0 and 100000: %', "class", packet_per_ip_unit, packet_per_ip_rate;
            END IF;
            IF NOT (packet_per_ip_size=0 OR packet_per_ip_size BETWEEN 10 AND 10000) THEN
                RAISE EXCEPTION '% packet/%/IP size outside of range, must be 0 or between 10 and 10000: %', "class", packet_per_ip_unit, packet_per_ip_size;
            END IF;
            -- packet
            IF packet_unit NOT IN ('second', 'minute', 'hour', 'day') THEN
                RAISE EXCEPTION '% time unit invalid for packet, must be one of ''second'', ''minute'', ''hour'', or ''day'': %', "class", packet_unit;
            END IF;
            IF NOT packet_burst BETWEEN 0 AND 100000 THEN
                RAISE EXCEPTION '% packet/% burst outside of range, must be between 0 and 100000: %', "class", packet_unit, packet_burst;
            END IF;
            IF NOT packet_rate BETWEEN 0 AND 100000 THEN
                RAISE EXCEPTION '% packet/% outside of range, must be between 0 and 10000: %', "class", packet_unit, packet_rate;
            END IF;

            -- The special case of zero must match for all limits within a class
            IF NOT (
                (
                        syn_per_ip_burst     = 0
                    AND syn_per_ip_rate      = 0
                    AND syn_per_ip_size      = 0
                    AND syn_burst            = 0
                    AND syn_rate             = 0
                    AND packet_per_ip_burst  = 0
                    AND packet_per_ip_rate   = 0
                    AND packet_per_ip_size   = 0
                    AND packet_burst         = 0
                    AND packet_rate          = 0
                ) OR (
                        syn_per_ip_burst    != 0
                    AND syn_per_ip_rate     != 0
                    AND syn_per_ip_size     != 0
                    AND syn_burst           != 0
                    AND syn_rate            != 0
                    AND packet_per_ip_burst != 0
                    AND packet_per_ip_rate  != 0
                    AND packet_per_ip_size  != 0
                    AND packet_burst        != 0
                    AND packet_rate         != 0
                )
            ) THEN
                RAISE EXCEPTION '% burst and rate must be all zero or all non-zero', "class";
            END IF;

            -- per-IP must be <= max (do same for both burst and rate)
            -- To implement would require unit conversions for comparison:
            -- IF syn_per_ip_rate > syn_rate THEN
            --     RAISE EXCEPTION '% syn/second/IP may not be greater than syn/second: % > %', "class", sps_per_ip, sps;
            -- END IF;
            -- IF pps_per_ip > pps THEN
            --     RAISE EXCEPTION '% packets/second/IP may not be greater than packets/second: % > %', "class", pps_per_ip, pps;
            -- END IF;

            -- All is OK
            RETURN true;
        END;
    $$
    LANGUAGE plpgsql
    IMMUTABLE
;

create table ip_reputation_limiter_limits (
  pkey integer
    default nextval('ip_reputation_limiter_limits_pkey_seq')
    constraint ip_reputation_limiter_limits_pkey primary key,
  limiter integer not null,
  "class" text not null
    check (
      "class" in ('bd', 'bu', 'gu', 'gd', 'gn', 'uu')
    ),
  unique(limiter, "class"),
  syn_per_ip_burst    smallint not null,
  syn_per_ip_rate     smallint not null,
  syn_per_ip_unit     text     not null,
  syn_per_ip_size     smallint not null,
  syn_burst           smallint not null,
  syn_rate            smallint not null,
  syn_unit            text     not null,
  packet_per_ip_burst integer  not null,
  packet_per_ip_rate  integer  not null,
  packet_per_ip_unit  text     not null,
  packet_per_ip_size  integer  not null,
  packet_burst        integer  not null,
  packet_rate         integer  not null,
  packet_unit         text     not null,
  check (
    isValidIpReputationLimits(
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
    )
  )
);
grant all on ip_reputation_limiter_limits to aoadmin;
grant select on ip_reputation_limiter_limits to aoserv_app;

-- Initial Data
begin;
-- XLITE667
insert into ip_reputation_limiter_limits values (
    1,
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
insert into ip_reputation_limiter_limits values (
    2,
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
insert into ip_reputation_limiter_limits values (
    3,
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
insert into ip_reputation_limiter_limits values (
    4,
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
insert into ip_reputation_limiter_limits values (
    5,
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
insert into ip_reputation_limiter_limits values (
    6,
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
insert into ip_reputation_limiter_limits values (
    7,
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
insert into ip_reputation_limiter_limits values (
    8,
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
insert into ip_reputation_limiter_limits values (
    9,
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
insert into ip_reputation_limiter_limits values (
    10,
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
insert into ip_reputation_limiter_limits values (
    11,
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
insert into ip_reputation_limiter_limits values (
    12,
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
insert into ip_reputation_limiter_limits values (
    13,
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
insert into ip_reputation_limiter_limits values (
    14,
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
insert into ip_reputation_limiter_limits values (
    15,
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
insert into ip_reputation_limiter_limits values (
    16,
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
insert into ip_reputation_limiter_limits values (
    17,
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
insert into ip_reputation_limiter_limits values (
    18,
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
-- RUNEREBE
insert into ip_reputation_limiter_limits values (
    19,
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
insert into ip_reputation_limiter_limits values (
    20,
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
insert into ip_reputation_limiter_limits values (
    21,
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
insert into ip_reputation_limiter_limits values (
    22,
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
insert into ip_reputation_limiter_limits values (
    23,
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
insert into ip_reputation_limiter_limits values (
    24,
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
-- WEBLARA
insert into ip_reputation_limiter_limits values (
    25,
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
insert into ip_reputation_limiter_limits values (
    26,
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
insert into ip_reputation_limiter_limits values (
    27,
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
insert into ip_reputation_limiter_limits values (
    28,
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
insert into ip_reputation_limiter_limits values (
    29,
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
insert into ip_reputation_limiter_limits values (
    30,
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
-- LOSTHOPERSPS
insert into ip_reputation_limiter_limits values (
    31,
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
insert into ip_reputation_limiter_limits values (
    32,
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
insert into ip_reputation_limiter_limits values (
    33,
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
insert into ip_reputation_limiter_limits values (
    34,
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
insert into ip_reputation_limiter_limits values (
    35,
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
insert into ip_reputation_limiter_limits values (
    36,
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
insert into ip_reputation_limiter_limits values (
    37,
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
insert into ip_reputation_limiter_limits values (
    38,
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
insert into ip_reputation_limiter_limits values (
    39,
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
insert into ip_reputation_limiter_limits values (
    40,
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
insert into ip_reputation_limiter_limits values (
    41,
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
insert into ip_reputation_limiter_limits values (
    42,
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
select setval('ip_reputation_limiter_limits_pkey_seq', 43, false);
commit;
