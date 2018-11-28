CREATE TYPE "net.reputation"."Class" AS ENUM (
  -- TODO: Rename "gi" for "Good IpSet"
  'gm',
  -- TODO: Rename "bi" for "Bad IpSet"
  'bm',
  'bd',
  'bu',
  'gu',
  'gd',
  'gn',
  'uu'
);
COMMENT ON TYPE "net.reputation"."Class" IS
'gm : Manual Good
bm : Manual Bad
bd : Definite Bad
bu : Uncertain Bad
gu : Uncertain Good
gd : Definite Good
gn : Network Good
uu : Unknown

Matches enum com.aoindustries.aoserv.client.IpReputationLimiterLimit.LimiterClass';
