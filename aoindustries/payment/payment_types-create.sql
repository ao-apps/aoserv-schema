create table payment_types (
  "name" text
    primary key,
  description text
    not null,
  active boolean
    not null,
  allow_web boolean
    not null
);
grant all            on payment_types to aoadmin;
grant select, update on payment_types to aoserv_app;
