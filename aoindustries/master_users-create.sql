create table master_users (
  username text
    constraint master_users_pkey primary key,
  is_active bool
    default true
    not null,
  can_access_accounting bool
    default false
    not null,
  can_access_bank_account bool
    default false
    not null,
  can_invalidate_tables bool
    default false
    not null,
  can_access_admin_web bool
    default false
    not null,
  is_ticket_admin bool
    default false
    not null,
  is_dns_admin bool
    default false
    not null
);
grant all on master_users to aoadmin;
grant select, insert, delete on master_users to aoserv_app;
