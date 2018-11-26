create schema if not exists master;

comment on schema master is 'AOServ Master';

grant all   on schema master to aoadmin;
grant usage on schema master to aoserv_app;
