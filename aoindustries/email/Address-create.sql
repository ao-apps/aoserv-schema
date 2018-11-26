create sequence         email."Address_id_seq" cycle;
grant all            on email."Address_id_seq" to aoadmin;
grant select, update on email."Address_id_seq" to aoserv_app;

create table email."Address" (
  id integer
    default nextval('email."Address_id_seq"')
    primary key,
  address text
    not null,
  "domain" integer
    not null,
  unique (address, "domain")
);
grant all                            on email."Address" to aoadmin;
grant select, insert, update, delete on email."Address" to aoserv_app;
