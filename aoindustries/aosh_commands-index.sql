create index aosh_commands_table_name_idx on aosh_commands (
  table_name
);
create index aosh_commands_since_version_idx on aosh_commands (
  since_version
);
create index aosh_commands_last_version_idx on aosh_commands (
  last_version
);
