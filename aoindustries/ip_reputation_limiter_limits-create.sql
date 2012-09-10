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

-- Definite Bad
insert into ip_reputation_limiter_limits values (
    1,
    1,
    'bd',
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
-- Uncertain Bad
insert into ip_reputation_limiter_limits values (
    2,
    1,
    'bu',
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
-- Uncertain Good
insert into ip_reputation_limiter_limits values (
    3,
    1,
    'gu',
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- Definite Good
insert into ip_reputation_limiter_limits values (
    4,
    1,
    'gd',
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- Network Good
insert into ip_reputation_limiter_limits values (
    5,
    1,
    'gn',
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
-- Unknown
insert into ip_reputation_limiter_limits values (
    6,
    1,
    'uu',
    20,       -- syn_per_ip_burst
    10,       -- syn_per_ip_rate
    'second', -- syn_per_ip_unit
    1000,     -- syn_per_ip_size
    100,      -- syn_burst
    100,      -- syn_rate
    'second', -- syn_unit
    2000,     -- packet_per_ip_burst
    1000,     -- packet_per_ip_rate
    'second', -- packet_per_ip_unit
    10000,    -- packet_per_ip_size
    10000,    -- packet_burst
    10000,    -- packet_rate
    'second'  -- packet_unit
);
select setval('ip_reputation_limiter_limits_pkey_seq', 7, false);
