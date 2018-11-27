create sequence         billing."PackageDefinition_id_seq" cycle;
grant all            on billing."PackageDefinition_id_seq" to aoadmin;
grant select, update on billing."PackageDefinition_id_seq" to aoserv_app;

create table billing."PackageDefinition" (
  id integer
    default nextval('billing."PackageDefinition_id_seq"')
    primary key,
  accounting text
    not null,
  category text
    not null,
  "name" text
    not null,
  version text
    not null,
  display text
    not null,
  description text
    not null,
  setup_fee numeric(9,2),
  setup_fee_transaction_type text,
  monthly_rate numeric(9,2)
    not null,
  monthly_rate_transaction_type text
    not null,
  active boolean
    not null
    default false,
  approved boolean
    not null
    default false
);

grant all                            on billing."PackageDefinition" to aoadmin;
grant select, insert, update, delete on billing."PackageDefinition" to aoserv_app;
grant select                         on billing."PackageDefinition" to billing;
