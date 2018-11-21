create sequence         billing.package_definition_limits_pkey_seq cycle;
grant all            on billing.package_definition_limits_pkey_seq to aoadmin;
grant select, update on billing.package_definition_limits_pkey_seq to aoserv_app;

create table package_definition_limits (
  pkey integer
    default nextval('billing.package_definition_limits_pkey_seq')
    primary key,
  package_definition integer
    not null,
  resource text
    not null,
  soft_limit integer,
  hard_limit integer,
  additional_rate numeric(9,2),
  additional_transaction_type text,
  unique(package_definition, resource)
);
grant all                            on package_definition_limits to aoadmin;
grant select, insert, update, delete on package_definition_limits to aoserv_app;
