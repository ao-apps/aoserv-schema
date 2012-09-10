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
