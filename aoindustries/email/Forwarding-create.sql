create sequence         email."Forwarding_pkey_seq" cycle;
grant all            on email."Forwarding_pkey_seq" to aoadmin;
grant select, update on email."Forwarding_pkey_seq" to aoserv_app;

create table email."Forwarding" (
  pkey integer
    default nextval('email."Forwarding_pkey_seq"')
    primary key,
  email_address integer
    not null,
  destination text
    not null,
  unique(email_address, destination)
);
grant all                            on email."Forwarding" to aoadmin;
grant select, insert, update, delete on email."Forwarding" to aoserv_app;
