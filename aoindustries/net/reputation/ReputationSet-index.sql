create index "ReputationSet_accounting_fkey" on "net/reputation"."ReputationSet" (
  accounting
);
create index "ReputationSet_last_host_decay_idx" on "net/reputation"."ReputationSet" (
  last_host_decay
);
create index "ReputationSet_last_network_decay_idx" on "net/reputation"."ReputationSet" (
  last_network_decay
);
