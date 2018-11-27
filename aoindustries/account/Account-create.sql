create table account."Account" (
  accounting text
    primary key,
  contract_version text,
  created timestamp with time zone
    default now()
    not null,
  canceled timestamp with time zone,
  cancel_reason text,
  parent text,
  can_add_backup_server boolean
    not null,
  can_add_businesses boolean
    not null,
  can_see_prices boolean
    not null,
  disable_log integer,
  do_not_disable_reason text,
  auto_enable boolean
    not null,
  bill_parent boolean
    not null
);
grant all                    on account."Account" to aoadmin;
grant select, insert, update on account."Account" to aoserv_app;
grant select                 on account."Account" to billing;
grant select                 on account."Account" to infrastructure;
