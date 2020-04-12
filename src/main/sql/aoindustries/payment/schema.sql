create schema if not exists payment;

comment on schema payment is 'Payment processing';

grant all   on schema payment to aoadmin;
grant usage on schema payment to aoserv_app;
grant usage on schema payment to accounting;
