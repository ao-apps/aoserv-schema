create sequence linux_server_accounts_pkey_seq cycle;
grant all            on linux_server_accounts_pkey_seq to aoadmin;
grant select, update on linux_server_accounts_pkey_seq to aoserv_app;

create table linux_server_accounts (
  pkey integer
    default nextval('linux_server_accounts_pkey_seq')
    primary key,
  username text
    not null,
  ao_server integer
    not null,
  uid integer
    not null,
  home text
    not null,
  autoresponder_from integer,
  autoresponder_subject text,
  autoresponder_path text,
  is_autoresponder_enabled bool
    not null
    default false,
  disable_log integer,
  predisable_password text,
  created timestamp with time zone
    not null
    default now(),
  use_inbox bool
    not null
    default true,
  trash_email_retention integer,
  junk_email_retention integer,
  sa_integration_mode text
    not null
    default 'none',
  sa_required_score float4
    not null
    default 3,
  sa_discard_score integer
    default 20
    check (sa_discard_score is null or sa_discard_score>0),
  sudo text,
  unique (username, ao_server)
);
grant all                            on linux_server_accounts to aoadmin;
grant select, insert, update, delete on linux_server_accounts to aoserv_app;
