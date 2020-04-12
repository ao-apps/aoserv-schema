create schema if not exists "distribution.management";

comment on schema "distribution.management" is 'AO professional management service';

grant all   on schema "distribution.management" to aoadmin;
grant usage on schema "distribution.management" to aoserv_app;
