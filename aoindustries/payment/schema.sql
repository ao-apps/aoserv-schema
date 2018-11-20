-- Depends on:
-- TODO

create schema if not exists payment;

comment on schema payment is 'The payment schema supports payment processing';

grant all   on schema payment to aoadmin;
grant usage on schema payment to aoserv_app;
