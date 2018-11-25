CREATE DOMAIN linux."LinuxId" AS integer
  CHECK (value >= 0 and value <= 65535);
COMMENT ON DOMAIN linux."LinuxId"
IS 'Matches class com.aoindustries.aoserv.client.validator.LinuxId';
