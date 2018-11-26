/*
Checks reputation limits.

Returns NULL when valid.
Returns a description when invalid.

Based on reputation, traffic is divided into six classes:
  gm: manual good
  bm: manual bad
  bd: definite bad
  bu: uncertain bad
  gu: uncertain good
  gd: definite good
  gn: network good
  uu: unknown

For each class, we configure:
  per-ip max syn/sec
  max syn/sec
  per-ip max packets/sec
  max packets/sec

Any limit of 0 means to just drop outright

syn put before packets/sec so that synflood doesn't affect packets/second
for non-syn (established connections) within the same class.

Per-IP limits are added first, so that a massive attack from one IP source will
not block all members of that class.
 */
CREATE OR REPLACE FUNCTION "net.reputation"."LimiterClass.validateLimits" (
  "class"             "net.reputation"."Class",
  syn_per_ip_burst    smallint,
  syn_per_ip_rate     smallint,
  syn_per_ip_unit     "net.reputation"."LimiterClass.TimeUnit",
  syn_per_ip_size     smallint,
  syn_burst           smallint,
  syn_rate            smallint,
  syn_unit            "net.reputation"."LimiterClass.TimeUnit",
  packet_per_ip_burst integer,
  packet_per_ip_rate  integer,
  packet_per_ip_unit  "net.reputation"."LimiterClass.TimeUnit",
  packet_per_ip_size  integer,
  packet_burst        integer,
  packet_rate         integer,
  packet_unit         "net.reputation"."LimiterClass.TimeUnit"
)
RETURNS text AS $$
BEGIN
  -- Check bounds for each parameter
  -- syn_per_ip
  IF NOT syn_per_ip_burst BETWEEN 0 AND 10000 THEN
    RETURN "class" || ' syn/' || syn_per_ip_unit || '/IP burst outside of range, must be between 0 and 10000: ' || syn_per_ip_burst;
  END IF;
  IF NOT syn_per_ip_rate BETWEEN 0 AND 10000 THEN
    RETURN "class" || ' syn/' || syn_per_ip_unit || '/IP outside of range, must be between 0 and 10000: ' || syn_per_ip_rate;
  END IF;
  IF NOT (syn_per_ip_size=0 OR syn_per_ip_size BETWEEN 10 AND 10000) THEN
    RETURN "class" || ' syn/' || syn_per_ip_unit || '/IP size outside of range, must be 0 or between 10 and 10000: ' || syn_per_ip_size;
  END IF;
  -- syn
  IF NOT syn_burst BETWEEN 0 AND 10000 THEN
    RETURN "class" || ' syn/' || syn_unit || ' burst outside of range, must be between 0 and 10000: ' || syn_burst;
  END IF;
  IF NOT syn_rate BETWEEN 0 AND 10000 THEN
    RETURN "class" || ' syn/' || syn_unit || ' outside of range, must be between 0 and 10000: ' || syn_rate;
  END IF;
  -- packet_per_ip
  IF NOT packet_per_ip_burst BETWEEN 0 AND 100000 THEN
    RETURN "class" || ' packet/' || packet_per_ip_unit || '/IP burst outside of range, must be between 0 and 100000: ' || packet_per_ip_burst;
  END IF;
  IF NOT packet_per_ip_rate BETWEEN 0 AND 100000 THEN
    RETURN "class" || ' packet/' || packet_per_ip_unit || '/IP outside of range, must be between 0 and 100000: ' || packet_per_ip_rate;
  END IF;
  IF NOT (packet_per_ip_size=0 OR packet_per_ip_size BETWEEN 10 AND 10000) THEN
    RETURN "class" || ' packet/' || packet_per_ip_unit || '/IP size outside of range, must be 0 or between 10 and 10000: ' || packet_per_ip_size;
  END IF;
  -- packet
  IF NOT packet_burst BETWEEN 0 AND 100000 THEN
    RETURN "class" || ' packet/' || packet_unit || ' burst outside of range, must be between 0 and 100000: ' || packet_burst;
  END IF;
  IF NOT packet_rate BETWEEN 0 AND 100000 THEN
    RETURN "class" || ' packet/' || packet_unit || ' outside of range, must be between 0 and 10000: ' || packet_rate;
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
    RETURN "class" || ' burst and rate must be all zero or all non-zero';
  END IF;

  -- per-IP must be <= max (do same for both burst and rate)
  -- To implement would require unit conversions for comparison:
  -- IF syn_per_ip_rate > syn_rate THEN
  --   RETURN "class" || ' syn/second/IP may not be greater than syn/second: ' || sps_per_ip || ' > ' || sps;
  -- END IF;
  -- IF pps_per_ip > pps THEN
  --   RETURN "class" || ' packets/second/IP may not be greater than packets/second: ' || pps_per_ip || ' > ' || pps;
  -- END IF;

  -- All is OK
  RETURN null;
END;
$$ LANGUAGE plpgsql
IMMUTABLE;
