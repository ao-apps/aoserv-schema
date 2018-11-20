create table payment_types (
  name text
    constraint payment_types_pkey primary key,
  description text
    not null,
  active bool
    not null,
  allow_web bool
    not null
);
grant all            on payment_types to aoadmin;
grant select, update on payment_types to aoserv_app;
