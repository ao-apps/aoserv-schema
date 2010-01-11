create unique index cvs_repositories_uni on cvs_repositories (
  ao_server,
  "path"
);
create unique index cvs_repositories_ao_server_super on cvs_repositories (
  ao_server,
  ao_server_resource
);
create index cvs_repositories_linux_account_group_idx on cvs_repositories (
  ao_server,
  linux_account_group
);
create index cvs_repositories_linux_account_type_idx on cvs_repositories (
  linux_account_type,
  linux_account_group
);
