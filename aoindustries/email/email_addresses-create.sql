create sequence         email_addresses_pkey_seq cycle;
grant all            on email_addresses_pkey_seq to aoadmin;
grant select, update on email_addresses_pkey_seq to aoserv_app;

create table email_addresses (
  pkey integer
    default nextval('email_addresses_pkey_seq')
    primary key,
  address text
    not null,
  "domain" integer
    not null,
  unique (address, "domain")
);
grant all                            on email_addresses to aoadmin;
grant select, insert, update, delete on email_addresses to aoserv_app;
