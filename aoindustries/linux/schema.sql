create schema if not exists linux;

comment on schema linux is 'The linux schema contains Linux user and group configuration';

grant all   on schema linux to aoadmin;
grant usage on schema linux to aoserv_app;
