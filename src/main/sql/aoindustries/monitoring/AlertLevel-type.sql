CREATE TYPE monitoring."AlertLevel" AS ENUM (
  'NONE',
  'LOW',
  'MEDIUM',
  'HIGH',
  'CRITICAL',
  'UNKNOWN'
);
COMMENT ON TYPE monitoring."AlertLevel"
IS 'Matches enum com.aoindustries.aoserv.client.monitoring.AlertLevel
Matches enum com.aoindustries.noc.monitor.common.AlertLevel';
