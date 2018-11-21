create sequence email_list_addresses_pkey_seq cycle;
grant all            on email_list_addresses_pkey_seq to aoadmin;
grant select, update on email_list_addresses_pkey_seq to aoserv_app;

create table email_list_addresses (
  pkey integer
    default nextval('email_list_addresses_pkey_seq')
    primary key,
  email_address integer
    not null,
  email_list integer
    not null,
  unique(email_address, email_list)
);
grant all                            on email_list_addresses to aoadmin;
grant select, insert, update, delete on email_list_addresses to aoserv_app;
