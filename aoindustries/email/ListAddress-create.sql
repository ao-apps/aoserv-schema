create sequence         email."ListAddress_id_seq" cycle;
grant all            on email."ListAddress_id_seq" to aoadmin;
grant select, update on email."ListAddress_id_seq" to aoserv_app;

create table email."ListAddress" (
  id integer
    default nextval('email."ListAddress_id_seq"')
    primary key,
  email_address integer
    not null,
  email_list integer
    not null,
  unique(email_address, email_list)
);
grant all                            on email."ListAddress" to aoadmin;
grant select, insert, update, delete on email."ListAddress" to aoserv_app;
