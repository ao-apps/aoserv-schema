create schema if not exists "mysql.management";

comment on schema "mysql.management" is 'AO professional management service';

grant all   on schema "mysql.management" to aoadmin;
grant usage on schema "mysql.management" to management;
