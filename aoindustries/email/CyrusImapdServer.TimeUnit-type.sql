CREATE TYPE email."CyrusImapdServer.TimeUnit" AS ENUM (
  'd',
  'h',
  'm',
  's'
);
COMMENT ON TYPE email."CyrusImapdServer.TimeUnit"
IS 'Matches enum com.aoindustries.aoserv.client.CyrusImapdServer.TimeUnit';
