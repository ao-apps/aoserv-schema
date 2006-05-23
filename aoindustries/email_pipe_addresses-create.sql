create sequence email_pipe_addresses_pkey_seq cycle;
grant all on email_pipe_addresses_pkey_seq to aoadmin;
grant select, update on email_pipe_addresses_pkey_seq to aoserv_app;

create table email_pipe_addresses (
  pkey integer
    default nextval('email_pipe_addresses_pkey_seq')
    constraint email_pipe_addresses_pkey primary key,
  email_address integer
    not null,
  email_pipe integer
    not null,
  unique(email_address, email_pipe)
);
grant all on email_pipe_addresses to aoadmin;
grant select, insert, update, delete on email_pipe_addresses to aoserv_app;
