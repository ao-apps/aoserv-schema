create schema if not exists "net.monitoring";

comment on schema "net.monitoring" is 'Network monitoring configuration';

grant all   on schema "net.monitoring" to aoadmin;
grant usage on schema "net.monitoring" to aoserv_app;
grant usage on schema "net.monitoring" to monitoring;
