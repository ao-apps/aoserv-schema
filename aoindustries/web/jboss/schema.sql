create schema if not exists "web/jboss";

comment on schema "web/jboss" is 'JBoss configuration';

grant all   on schema "web/jboss" to aoadmin;
grant usage on schema "web/jboss" to aoserv_app;
