create sequence         email."Pipe_pkey_seq" cycle;
grant all            on email."Pipe_pkey_seq" to aoadmin;
grant select, update on email."Pipe_pkey_seq" to aoserv_app;

create table email."Pipe" (
  pkey integer
    default nextval('email."Pipe_pkey_seq"')
    primary key,
  ao_server integer
    not null,
  "path" text -- TODO: Is "command" now?
    not null,
  package text
    not null,
  disable_log integer,
  unique(ao_server, "path")
);
grant all                            on email."Pipe" to aoadmin;
grant select, insert, update, delete on email."Pipe" to aoserv_app;
