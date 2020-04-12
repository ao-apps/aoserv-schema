create sequence         email."Pipe_id_seq" cycle;
grant all            on email."Pipe_id_seq" to aoadmin;
grant select, update on email."Pipe_id_seq" to aoserv_app;

create table email."Pipe" (
  id integer
    default nextval('email."Pipe_id_seq"')
    primary key,
  ao_server integer
    not null,
  command text
    not null,
  package text
    not null,
  disable_log integer,
  unique(ao_server, command)
);
grant all                            on email."Pipe" to aoadmin;
grant select, insert, update, delete on email."Pipe" to aoserv_app;
