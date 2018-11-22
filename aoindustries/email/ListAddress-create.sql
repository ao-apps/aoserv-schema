create sequence         email."ListAddress_pkey_seq" cycle;
grant all            on email."ListAddress_pkey_seq" to aoadmin;
grant select, update on email."ListAddress_pkey_seq" to aoserv_app;

create table email."ListAddress" (
  pkey integer
    default nextval('email."ListAddress_pkey_seq"')
    primary key,
  email_address integer
    not null,
  email_list integer
    not null,
  unique(email_address, email_list)
);
grant all                            on email."ListAddress" to aoadmin;
grant select, insert, update, delete on email."ListAddress" to aoserv_app;
