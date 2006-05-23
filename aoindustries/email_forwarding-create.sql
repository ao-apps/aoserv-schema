create sequence email_forwarding_pkey_seq cycle;
grant all on email_forwarding_pkey_seq to aoadmin;
grant select, update on email_forwarding_pkey_seq to aoserv_app;

create table email_forwarding (
  pkey integer
    default nextval('email_forwarding_pkey_seq')
    constraint email_forwarding_pkey primary key,
  email_address integer
    not null,
  destination text
    not null,
  unique(email_address, destination)
);
grant all on email_forwarding to aoadmin;
grant select, insert, update, delete on email_forwarding to aoserv_app;
