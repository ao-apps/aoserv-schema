create schema if not exists "web/jboss";

comment on schema "web/jboss" is 'The web/jboss schema contains JBoss configuration';

grant all   on schema "web/jboss" to aoadmin;
grant usage on schema "web/jboss" to aoserv_app;
