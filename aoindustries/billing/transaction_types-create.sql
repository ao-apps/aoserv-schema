create table transaction_types (
  name text
    constraint transaction_types_pkey primary key,
  is_credit bool
    not null
);
grant all    on transaction_types to aoadmin;
grant select on transaction_types to aoserv_app;
