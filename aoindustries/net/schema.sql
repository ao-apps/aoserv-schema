create schema if not exists net;

comment on schema net is 'Networking configuration';

grant all   on schema net to aoadmin;
grant usage on schema net to aoserv_app;
grant usage on schema net to billing; -- TODO: Access is for update net.Host.monitoring_enabled only
grant usage on schema net to management;
