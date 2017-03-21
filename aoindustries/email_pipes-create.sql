create sequence email_pipes_pkey_seq cycle;
grant all on email_pipes_pkey_seq to aoadmin;
grant select, update on email_pipes_pkey_seq to aoserv_app;

create table email_pipes (
  pkey integer
    default nextval('email_pipes_pkey_seq')
    constraint email_pipes_pkey primary key,
  ao_server integer
    not null,
  command text
    not null,
  package text
    not null,
  disable_log integer,
  unique(ao_server, path)
);
grant all on email_pipes to aoadmin;
grant select, insert, update, delete on email_pipes to aoserv_app;
