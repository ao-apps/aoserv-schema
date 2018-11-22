create sequence         email."Address_pkey_seq" cycle;
grant all            on email."Address_pkey_seq" to aoadmin;
grant select, update on email."Address_pkey_seq" to aoserv_app;

create table email."Address" (
  pkey integer
    default nextval('email."Address_pkey_seq"')
    primary key,
  address text
    not null,
  "domain" integer
    not null,
  unique (address, "domain")
);
grant all                            on email."Address" to aoadmin;
grant select, insert, update, delete on email."Address" to aoserv_app;
