create table private_ftp_servers (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type='private_ftp_server'), -- Used as hidden constant type reference constraint
  accounting text not null, -- Used as hidden reference to net_binds and ao_server_resources only
  ao_server integer not null, -- Used as hidden reference to net_binds, linux_account_groups, and ao_server_resources only
  net_bind integer not null,
  logfile text not null,
  hostname text not null,
  email text not null,
  linux_account_group integer not null,
  linux_account_type text not null -- Hidden reference to linux_account_groups only
    check (
      linux_account_type in (
        'system_account', -- TODO: How can we make vsftpd run with user privileges?
        'shell_account',
        'ftponly_account'
      )
    ),
  allow_anonymous bool not null
);
grant all on private_ftp_servers to aoadmin;
grant select, delete on private_ftp_servers to aoserv_app;
