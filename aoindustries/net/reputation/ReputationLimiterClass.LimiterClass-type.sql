CREATE TYPE "net/reputation"."ReputationLimiterClass.LimiterClass" AS ENUM (
  -- Manual Good
  'gm',
  -- Manual Bad
  'bm',
  -- Definite Bad
  'bd',
  -- Uncertain Bad
  'bu',
  -- Uncertain Good
  'gu',
  -- Definite Good
  'gd',
  -- Network Good
  'gn',
  -- Unknown
  'uu'
);
COMMENT ON TYPE "net/reputation"."ReputationLimiterClass.LimiterClass"
IS 'Matches enum com.aoindustries.aoserv.client.IpReputationLimiterLimit.LimiterClass';
