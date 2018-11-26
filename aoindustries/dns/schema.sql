create schema if not exists dns;

comment on schema dns is 'The dns schema contains DNS configuration';

grant all   on schema dns to aoadmin;
grant usage on schema dns to aoserv_app;
