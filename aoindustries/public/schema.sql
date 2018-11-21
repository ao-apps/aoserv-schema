-- Depends on:
-- None

-- TODO: Drop schema once conversion done and unused
--       And leave drop here, since it will be our standard to not have the default public schema.

create schema if not exists public;

-- Note: This has to be set by the "postgres" superuser
comment on schema public is 'The default schema used for things not otherwise classified into a specific schema';

-- revoke create on schema public from public;
-- grant  all    on schema public to aoadmin;
-- grant  usage  on schema public to aoserv_app;
-- grant  usage  on schema public to kaori;
