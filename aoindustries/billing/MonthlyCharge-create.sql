create sequence billing."MonthlyCharge_pkey_seq" cycle;
grant all    on billing."MonthlyCharge_pkey_seq" to aoadmin;
grant select on billing."MonthlyCharge_pkey_seq" to aoserv_app;

create table billing."MonthlyCharge" (
  pkey integer
    default nextval('billing."MonthlyCharge_pkey_seq"')
    primary key,
  accounting text
    not null,
  package text
    not null,
  "type" text
    not null,
  description text,
  quantity numeric(8,3)
    not null
    default 1
    constraint quantity_chk
      check (quantity>0),
  rate numeric(9,2)
    not null,
  created timestamp with time zone
    not null
    default now(),
  created_by text
    not null,
  active boolean
    not null
    default 'true'
);

grant all    on billing."MonthlyCharge" to aoadmin;
grant select on billing."MonthlyCharge" to aoserv_app;