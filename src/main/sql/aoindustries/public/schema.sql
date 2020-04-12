-- Note: Drop from "postgres" superuser once to get ownership of the public schema
create schema if not exists public;

comment on schema public is 'The default schema used for things not otherwise classified into a specific schema';

grant  all    on schema public to aoadmin;
grant  usage  on schema public to aoserv_app;
grant  usage  on schema public to accounting;
grant  usage  on schema public to billing;
grant  usage  on schema public to distribution;
grant  usage  on schema public to infrastructure;
grant  usage  on schema public to management;
grant  usage  on schema public to monitoring;
grant  usage  on schema public to reseller;
