create schema if not exists "net.reputation";

comment on schema "net.reputation" is 'The "net.reputation" schema contains IP reputation tracking configuration and data';

grant all   on schema "net.reputation" to aoadmin;
grant usage on schema "net.reputation" to aoserv_app;
