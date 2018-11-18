-- Depends on:
-- schema

create schema if not exists aosh;

comment on schema aosh is 'The aosh schema is used for the AOSH command line interface';

grant all   on schema aosh to aoadmin;
grant usage on schema aosh to aoserv_app;
