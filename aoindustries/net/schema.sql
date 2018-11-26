create schema if not exists net;

comment on schema net is 'Networking configuration';

grant all   on schema net to aoadmin;
grant usage on schema net to aoserv_app;
