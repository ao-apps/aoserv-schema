create sequence         email.email_forwarding_pkey_seq cycle;
grant all            on email.email_forwarding_pkey_seq to aoadmin;
grant select, update on email.email_forwarding_pkey_seq to aoserv_app;

create table email_forwarding (
  pkey integer
    default nextval('email.email_forwarding_pkey_seq')
    primary key,
  email_address integer
    not null,
  destination text
    not null,
  unique(email_address, destination)
);
grant all                            on email_forwarding to aoadmin;
grant select, insert, update, delete on email_forwarding to aoserv_app;
