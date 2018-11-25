CREATE TYPE "net/reputation"."Class" AS ENUM (
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
COMMENT ON TYPE "net/reputation"."Class"
IS 'Matches enum com.aoindustries.aoserv.client.IpReputationLimiterLimit.LimiterClass';
