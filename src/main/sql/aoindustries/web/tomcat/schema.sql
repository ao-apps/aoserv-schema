create schema if not exists "web.tomcat";

comment on schema "web.tomcat" is 'Tomcat configuration';

grant all   on schema "web.tomcat" to aoadmin;
grant usage on schema "web.tomcat" to aoserv_app;
