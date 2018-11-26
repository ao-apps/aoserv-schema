-- Depends on:
-- TODO

-- TODO: Delete this schema, along with from search_path, once not used
create schema if not exists server;

comment on schema server is 'The server schema contains server configuration';

grant all   on schema server to aoadmin;
grant usage on schema server to aoserv_app;
