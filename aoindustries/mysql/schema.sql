create schema if not exists mysql;

comment on schema mysql is 'MySQL configuration';

grant all   on schema mysql to aoadmin;
grant usage on schema mysql to aoserv_app;
