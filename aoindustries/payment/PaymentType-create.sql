create table payment."PaymentType" (
  "name" text
    primary key,
  description text
    not null,
  active boolean
    not null,
  allow_web boolean
    not null
);
grant all    on payment."PaymentType" to aoadmin;
grant select on payment."PaymentType" to aoserv_app;
