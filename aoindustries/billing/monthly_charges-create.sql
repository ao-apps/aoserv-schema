create sequence monthly_charges_pkey_seq cycle;
grant all            on monthly_charges_pkey_seq to aoadmin;
grant select, update on monthly_charges_pkey_seq to aoserv_app;

create table monthly_charges (
  pkey integer
    default nextval('monthly_charges_pkey_seq')
    primary key,
  accounting text
    not null,
  package text
    not null,
  type text
    not null,
  description text,
  quantity decimal(8,3)
    not null
    default 1
    constraint quantity_chk
      check (quantity>0),
  rate decimal(9,2)
    not null,
  created timestamp with time zone
    not null
    default now(),
  created_by text
    not null,
  active bool
    not null
    default 'true'
);
grant all    on monthly_charges to aoadmin;
grant select on monthly_charges to aoserv_app;
