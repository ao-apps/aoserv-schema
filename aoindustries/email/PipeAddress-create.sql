create sequence         email."PipeAddress_pkey_seq" cycle;
grant all            on email."PipeAddress_pkey_seq" to aoadmin;
grant select, update on email."PipeAddress_pkey_seq" to aoserv_app;

create table email."PipeAddress" (
  pkey integer
    default nextval('email."PipeAddress_pkey_seq"')
    primary key,
  email_address integer
    not null,
  email_pipe integer
    not null,
  unique(email_address, email_pipe)
);
grant all                            on email."PipeAddress" to aoadmin;
grant select, insert, update, delete on email."PipeAddress" to aoserv_app;
