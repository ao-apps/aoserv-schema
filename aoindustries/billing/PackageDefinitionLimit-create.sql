create sequence         billing."PackageDefinitionLimit_pkey_seq" cycle;
grant all            on billing."PackageDefinitionLimit_pkey_seq" to aoadmin;
grant select, update on billing."PackageDefinitionLimit_pkey_seq" to aoserv_app;

create table billing."PackageDefinitionLimit" (
  pkey integer
    default nextval('billing."PackageDefinitionLimit_pkey_seq"')
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
grant all                            on billing."PackageDefinitionLimit" to aoadmin;
grant select, insert, update, delete on billing."PackageDefinitionLimit" to aoserv_app;
