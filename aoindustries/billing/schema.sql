create schema if not exists billing;

comment on schema billing is 'Billing configuration and history';

grant all   on schema billing to aoadmin;
grant usage on schema billing to aoserv_app;
grant usage on schema billing to accounting;
grant usage on schema billing to billing;
grant usage on schema billing to infrastructure;
