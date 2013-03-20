create sequence ip_reputation_limiter_limits_pkey_seq cycle;
grant all on ip_reputation_limiter_limits_pkey_seq to aoadmin;
--grant select, update on ip_reputation_limiter_limits_pkey_seq to aoserv_app;

-- Based on reputation, traffic is divided into six classes:
--   gm: manual good
--   bm: manual bad
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
      "class" in ('gm', 'bm', 'bd', 'bu', 'gu', 'gd', 'gn', 'uu')
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
insert into ip_reputation_limiter_limits values (
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
select setval('ip_reputation_limiter_limits_pkey_seq', 361, false);
commit;
