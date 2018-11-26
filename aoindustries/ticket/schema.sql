create schema if not exists ticket;

comment on schema ticket is 'The ticket schema contains ticket system configuration and data';

grant all   on schema ticket to aoadmin;
grant usage on schema ticket to aoserv_app;
