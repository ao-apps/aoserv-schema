-- Matches com.aoindustries.aoserv.client.validator.LinuxId
CREATE DOMAIN linux."LinuxId" AS integer
  CHECK (value >= 0 and value <= 65535);
