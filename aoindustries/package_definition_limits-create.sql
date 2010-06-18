create sequence package_definition_limits_pkey_seq cycle;
grant all on package_definition_limits_pkey_seq to aoadmin;
grant select, update on package_definition_limits_pkey_seq to aoserv_app;

create table package_definition_limits (
  pkey integer default nextval('package_definition_limits_pkey_seq') constraint package_definition_limits_pkey primary key,
  package_definition integer not null,
  resource_type text not null,
  soft_limit integer check (soft_limit is null or soft_limit>=0),
  hard_limit integer check (hard_limit is null or hard_limit>=0),
  additional_rate decimal check (additional_rate is null or additional_rate>0), -- Must be in the currency of the package definition
  additional_transaction_type text,
  check (
    -- When hard_limit is provided, soft_limit must also be set
    (hard_limit is null or soft_limit is not null)
    -- soft_limit must always be <= hard_limit, when both exist
    and (soft_limit is null or hard_limit is null or soft_limit<=hard_limit)
    -- Additional rate and type only allowed when soft_limit is set and different than hard limit
    and (
      case when
        soft_limit is not null and (hard_limit is null or soft_limit!=hard_limit)
      then
        additional_rate is not null
        and additional_transaction_type is not null
      else
        additional_rate is null
        and additional_transaction_type is null
      end
    )
  )
);
grant all on package_definition_limits to aoadmin;
grant select, insert, update, delete on package_definition_limits to aoserv_app;
