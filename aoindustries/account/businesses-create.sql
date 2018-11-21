create table businesses (
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
grant all                            on businesses to aoadmin;
grant select, insert, update, delete on businesses to aoserv_app;
grant select                         on businesses to kaori;
