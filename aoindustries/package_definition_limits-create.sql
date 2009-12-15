create sequence package_definition_limits_pkey_seq cycle;
grant all on package_definition_limits_pkey_seq to aoadmin;
grant select, update on package_definition_limits_pkey_seq to aoserv_app;

create table package_definition_limits (
  pkey integer
    default nextval('package_definition_limits_pkey_seq')
    constraint package_definition_limits_pkey primary key,
  package_definition integer
    not null,
  resource text
    not null,
  soft_limit integer,
  hard_limit integer,
  additional_rate decimal(9,2) check (additional_rate is null or additional_rate>0),
  additional_transaction_type text,
  unique(package_definition, resource)
);
grant all on package_definition_limits to aoadmin;
grant select, insert, update, delete on package_definition_limits to aoserv_app;
