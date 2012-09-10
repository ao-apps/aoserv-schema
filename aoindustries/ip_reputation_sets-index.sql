create index ip_reputation_sets_accounting_idx on ip_reputation_sets (
  accounting
);
create index ip_reputation_sets_last_host_decay_idx on ip_reputation_sets (
  last_host_decay
);
create index ip_reputation_sets_last_network_decay_idx on ip_reputation_sets (
  last_network_decay
);
