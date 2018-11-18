-- Depends on:
-- public

create schema if not exists accounting;

comment on schema accounting is 'The accounting schema is used for AO Industries, Inc. internal accounting processes';
	
grant all   on schema accounting to aoadmin;
grant usage on schema accounting to aoserv_app;
