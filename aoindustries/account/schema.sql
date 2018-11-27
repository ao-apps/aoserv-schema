create schema if not exists account;

comment on schema account is 'AO account configuration';

grant all   on schema account to aoadmin;
grant usage on schema account to aoserv_app;
grant usage on schema account to billing;
grant usage on schema account to management;
