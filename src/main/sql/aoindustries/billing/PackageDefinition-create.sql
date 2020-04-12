create sequence         billing."PackageDefinition_id_seq" cycle;
grant all            on billing."PackageDefinition_id_seq" to aoadmin;
grant select, update on billing."PackageDefinition_id_seq" to aoserv_app;

create table billing."PackageDefinition" (
  id integer
    default nextval('billing."PackageDefinition_id_seq"')
    primary key,
  accounting text not null,
  category text not null,
  "name" text not null,
  version text not null,
  display text not null,
  description text not null,
  "setupFee.currency" char(3),
  "setupFee.value" numeric
    check ("setupFee.value" is null or "setupFee.value" > 0),
  check (
    ("setupFee.currency" is null) = ("setupFee.value" is null)
  ),
  setup_fee_transaction_type text,
  check (
    ("setupFee.value" is null) = (setup_fee_transaction_type is null)
  ),
  "monthlyRate.currency" char(3) not null,
  "monthlyRate.value" numeric not null
    check ("monthlyRate.value" >= 0),
  monthly_rate_transaction_type text not null,
  active boolean not null
    default false,
  approved boolean not null
    default false
);

grant all                            on billing."PackageDefinition" to aoadmin;
grant select, insert, update, delete on billing."PackageDefinition" to aoserv_app;
grant select                         on billing."PackageDefinition" to billing;
