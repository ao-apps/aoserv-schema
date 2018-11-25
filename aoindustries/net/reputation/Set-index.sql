create index "Set_accounting_fkey" on "net/reputation"."Set" (
  accounting
);
create index "Set_last_host_decay_idx" on "net/reputation"."Set" (
  last_host_decay
);
create index "Set_last_network_decay_idx" on "net/reputation"."Set" (
  last_network_decay
);
