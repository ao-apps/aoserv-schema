-- Matches enum com.aoindustries.aoserv.client.IpReputationLimiterLimit.TimeUnit
CREATE TYPE "net/reputation"."ReputationLimiterClass.TimeUnit" AS ENUM (
  'second',
  'minute',
  'hour',
  'day'
);
