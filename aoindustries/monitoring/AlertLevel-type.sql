-- Matches enum com.aoindustries.noc.monitor.common.AlertLevel
CREATE TYPE monitoring."AlertLevel" AS ENUM (
  'NONE',
  'LOW',
  'MEDIUM',
  'HIGH',
  'CRITICAL',
  'UNKNOWN'
);
