create sequence email_inbox_addresses_pkey_seq cycle;
grant all on email_inbox_addresses_pkey_seq to aoadmin;
grant select, update on email_inbox_addresses_pkey_seq to aoserv_app;

create table email_inbox_addresses (
  pkey integer default nextval('email_inbox_addresses_pkey_seq') primary key,
  email_address integer not null,
  email_inbox integer not null,
  unique(email_address, email_inbox)
);
grant all on email_inbox_addresses to aoadmin;
grant select, insert, update, delete on email_inbox_addresses to aoserv_app;
