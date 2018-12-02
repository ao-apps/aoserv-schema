create index "WhoisHistory_lastChecked_idx" on billing."WhoisHistory" (
  accounting, "zone", "time"
);
