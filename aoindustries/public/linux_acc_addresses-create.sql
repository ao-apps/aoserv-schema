create sequence linux_acc_addresses_pkey_seq cycle;
grant all on linux_acc_addresses_pkey_seq to aoadmin;
grant select, update on linux_acc_addresses_pkey_seq to aoserv_app;

create table linux_acc_addresses (
  pkey integer
    default nextval('linux_acc_addresses_pkey_seq')
    constraint linux_acc_addresses_pkey primary key,
  email_address integer
    not null,
  linux_server_account integer
    not null,
  unique(email_address, linux_server_account)
);
grant all on linux_acc_addresses to aoadmin;
grant select, insert, update, delete on linux_acc_addresses to aoserv_app;
