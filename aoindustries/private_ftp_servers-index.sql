create unique index private_ftp_servers_accounting_super on private_ftp_servers (
  accounting,
  ao_server_resource
);
create unique index private_ftp_servers_net_bind_accounting_super on private_ftp_servers (
  accounting,
  net_bind
);
create unique index private_ftp_servers_ao_server_super on private_ftp_servers (
  ao_server,
  ao_server_resource
);
create unique index private_ftp_servers_net_bind_ao_server_super on private_ftp_servers (
  ao_server,
  net_bind
);
create index private_ftp_servers_linux_account_group_ao_server_idx on private_ftp_servers (
  ao_server,
  linux_account_group
);
create index private_ftp_servers_linux_account_group_linux_account_type_idx on private_ftp_servers (
  linux_account_type,
  linux_account_group
);
