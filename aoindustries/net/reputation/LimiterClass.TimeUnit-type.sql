CREATE TYPE "net.reputation"."LimiterClass.TimeUnit" AS ENUM (
  'second',
  'minute',
  'hour',
  'day'
);
COMMENT ON TYPE "net.reputation"."LimiterClass.TimeUnit" IS
'Matches enum com.aoindustries.aoserv.client.net.reputation.LimiterClass.TimeUnit';
