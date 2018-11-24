-- Matches com.aoindustries.net.IPortRange
CREATE DOMAIN net."Port" AS integer
  CHECK (value >= 1 and value <= 65535);
