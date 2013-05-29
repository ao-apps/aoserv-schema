create index cvs_repositories_linux_server_account_idx on cvs_repositories (
  linux_server_account
);
create index cvs_repositories_linux_server_group_idx on cvs_repositories (
  linux_server_group
);
create index cvs_repositories_disable_log_idx on cvs_repositories (
  disable_log
);
