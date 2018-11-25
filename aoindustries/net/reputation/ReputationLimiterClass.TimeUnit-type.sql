CREATE TYPE "net/reputation"."ReputationLimiterClass.TimeUnit" AS ENUM (
  'second',
  'minute',
  'hour',
  'day'
);
COMMENT ON TYPE "net/reputation"."ReputationLimiterClass.TimeUnit"
IS 'Matches enum com.aoindustries.aoserv.client.IpReputationLimiterLimit.TimeUnit';
