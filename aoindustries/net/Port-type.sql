CREATE DOMAIN net."Port" AS integer
  CHECK (value >= 1 and value <= 65535);
COMMENT ON DOMAIN net."Port"
IS 'Matches class com.aoindustries.net.IPortRange';
