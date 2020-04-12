create index "BindFirewallZone_firewalld_zone_fkey" on net."BindFirewallZone" (
  firewalld_zone
);
