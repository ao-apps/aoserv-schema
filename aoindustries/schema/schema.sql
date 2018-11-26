create schema if not exists "schema";

comment on schema "schema" is 'The "schema" schema contains the definitions of the AOServ data structions over time';
	
grant all   on schema "schema" to aoadmin;
grant usage on schema "schema" to aoserv_app;
