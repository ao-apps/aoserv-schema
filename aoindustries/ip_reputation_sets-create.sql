create sequence ip_reputation_sets_pkey_seq cycle;
grant all on ip_reputation_sets_pkey_seq to aoadmin;
--grant select, update on ip_reputation_sets_pkey_seq to aoserv_app;

-- ipset has maximum name length of 31, and we prefix four characters, leaving 27 characters max.
--   Prefixes:
--       character 0: 'R': Reputation
--       character 1: 'G': Good,      'B': Bad
--       character 2: 'U': Uncertain, 'D': Definite, 'N': Network
--       character 3: '_': Separator
-- length("identifier")>=1 and length("identifier")<=27
-- Be safe by only allowing specific characters, even though ipset probably allows many more, we'll be shell-safe.
CREATE OR REPLACE FUNCTION isValidIpReputationIdentifier(identifier text)
    RETURNS boolean
    AS $$
        BEGIN
            IF identifier IS NULL THEN
                RAISE EXCEPTION 'Identifiers may not be null';
            END IF;
            IF NOT LENGTH(identifier) BETWEEN 1 AND 27 THEN
                RAISE EXCEPTION 'Identifiers must have between 1 and 27 characters: ''%''', identifier;
            END IF;
            IF identifier !~ E'^[a-zA-Z0-9_]' THEN
                RAISE EXCEPTION 'Identifiers may only start with a-z, A-Z, 0-9, or _: ''%''', identifier;
            END IF;

            IF identifier !~ E'^.[a-zA-Z0-9_-]*$' THEN
                RAISE EXCEPTION 'Identifiers may only contain a-z, A-Z, 0-9, _, or -: ''%''', identifier;
            END IF;

            -- All is OK
            RETURN true;
        END;
    $$
    LANGUAGE plpgsql
    IMMUTABLE
;

create table ip_reputation_sets (
  pkey integer
    default nextval('ip_reputation_sets_pkey_seq')
    constraint ip_reputation_sets_pkey primary key,
  accounting text
    not null,
  identifier text
    not null
    check (
        isValidIpReputationIdentifier(identifier)
    )
    unique,
  -- Allows a subaccount to use the set.  They cannot query the specific set members, however.
  allow_subaccount_use boolean
    not null,
  max_hosts integer
    not null
    check (max_hosts>0),
  max_uncertain_reputation smallint
    not null
    check (
        max_uncertain_reputation>=0
    ),
  max_definite_reputation smallint
    not null
    check (
        max_definite_reputation>=1
    ),
  check (
    -- Definite must equal to or be higher than uncertain
    max_definite_reputation>=max_uncertain_reputation
  ),
  network_prefix smallint
    not null
    check (network_prefix>=8 and network_prefix<=31),
  max_network_reputation smallint
    not null
    check (
        -- There must be enough bits in 31-bits to store counters for an network with both maximum reputation and size.
        -- Maximum network size is /8, which takes 24 bits for counters, leaving 8 bits.
        max_network_reputation>=1 and max_network_reputation<=127
    ),
  host_decay_interval integer
    not null
    check (host_decay_interval>=60),
  last_host_decay timestamp with time zone
    not null
    default now(),
  network_decay_interval integer
    not null
    check (network_decay_interval>=60),
  last_network_decay timestamp with time zone
    not null
    default now()
);
grant all on ip_reputation_sets to aoadmin;
grant select, update on ip_reputation_sets to aoserv_app;

BEGIN;
INSERT INTO ip_reputation_sets VALUES (
    1,
    'AOINDUSTRIES',
    'global',
    true,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-08-13 05:45:38.629683-05',
    3600,
    '2012-08-13 05:45:38.629683-05'
);
-- XLITE667
INSERT INTO ip_reputation_sets VALUES (
    2,
    'XLITE667',
    'xlite_users_43594',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-08-13 05:47:37.638487-05',
    3600,
    '2012-08-13 05:47:37.638487-05'
);
-- EMORTALZ
INSERT INTO ip_reputation_sets VALUES (
    3,
    'EMORTALZ',
    'emortalz',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 19:11:22.781276-05',
    3600,
    '2012-10-08 19:11:22.781276-05'
);
-- PROJECT_LA
INSERT INTO ip_reputation_sets VALUES (
    4,
    'PROJECT_LA',
    'pla',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 19:12:02.405987-05',
    3600,
    '2012-10-08 19:12:02.405987-05'
);
-- RUNEREBE
INSERT INTO ip_reputation_sets VALUES (
    5,
    'RUNEREBE',
    'runerebe',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 19:12:46.554972-05',
    3600,
    '2012-10-08 19:12:46.554972-05'
);
-- WEBLARA
INSERT INTO ip_reputation_sets VALUES (
    6,
    'WEBLARA',
    'weblara',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 19:13:17.79102-05',
    3600,
    '2012-10-08 19:13:17.79102-05'
);
-- LOSTHOPERSPS
INSERT INTO ip_reputation_sets VALUES (
    7,
    'LOSTHOPERSPS',
    'losthopersps',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-08 22:07:20.030039-05',
    3600,
    '2012-10-08 22:07:20.030039-05'
);
-- GTAPOLICEMODS
INSERT INTO ip_reputation_sets VALUES (
    8,
    'GTAPOLICEMODS',
    'gtapolicemods',
    false,
    1000000,
    127,
    1023,
    24,
    15,
    3600,
    '2012-10-09 00:12:35.149496-05',
    3600,
    '2012-10-09 00:12:35.149496-05'
);
SELECT setval('ip_reputation_sets_pkey_seq', 9, false);
COMMIT;
