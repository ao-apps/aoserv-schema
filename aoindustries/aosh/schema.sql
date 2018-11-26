create schema if not exists aosh;

comment on schema aosh is 'The AOSH command line interface';

grant all   on schema aosh to aoadmin;
grant usage on schema aosh to aoserv_app;
