create sequence linux_group_accounts_pkey_seq cycle;
grant all on linux_group_accounts_pkey_seq to aoadmin;
grant select, update on linux_group_accounts_pkey_seq to aoserv_app;

create table linux_group_accounts (
  pkey integer
    default nextval('linux_group_accounts_pkey_seq')
    constraint linux_group_accounts_pkey primary key,
  group_name text
    not null,
  username text
    not null,
  is_primary bool
    not null,
  unique (group_name, username)
);
grant all on linux_group_accounts to aoadmin;
grant select, insert, update, delete on linux_group_accounts to aoserv_app;
