create schema if not exists "java.util";

comment on schema "java.util" is
'A set of types assisting in matching the Java API.';

grant all   on schema "java.util" to aoadmin;
grant usage on schema "java.util" to aoserv_app;
