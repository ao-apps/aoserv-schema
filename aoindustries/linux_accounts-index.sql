create unique index linux_accounts_uni on linux_accounts (
  ao_server,
  username
);
create unique index linux_accounts_linux_account_type_super on linux_accounts (
  linux_account_type,
  ao_server_resource
);
create unique index linux_accounts_accounting_super on linux_accounts (
  accounting,
  ao_server_resource
);
create index linux_accounts_accounting_idx on linux_accounts (
  accounting,
  username
);
create unique index linux_accounts_ao_server_super on linux_accounts (
  ao_server,
  ao_server_resource
);
create index linux_accounts_shell_idx on linux_accounts (
  shell
);
create index linux_accounts_uid_idx on linux_accounts (
  uid
);
