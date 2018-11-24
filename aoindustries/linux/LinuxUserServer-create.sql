create sequence         linux."LinuxUserServer_pkey_seq" cycle;
grant all            on linux."LinuxUserServer_pkey_seq" to aoadmin;
grant select, update on linux."LinuxUserServer_pkey_seq" to aoserv_app;

create table linux."LinuxUserServer" (
  pkey integer
    default nextval('linux."LinuxUserServer_pkey_seq"')
    primary key,
  username text
    not null,
  ao_server integer
    not null,
  uid linux."LinuxId"
    not null,
  home text
    not null,
  autoresponder_from integer,
  autoresponder_subject text,
  autoresponder_path text,
  is_autoresponder_enabled boolean
    not null
    default false,
  disable_log integer,
  predisable_password text,
  created timestamp with time zone
    not null
    default now(),
  use_inbox boolean
    not null
    default true,
  trash_email_retention integer,
  junk_email_retention integer,
  sa_integration_mode text
    not null
    default 'none',
  sa_required_score real
    not null
    default 3,
  sa_discard_score integer
    default 20
    check (sa_discard_score is null or sa_discard_score>0),
  sudo text,
  unique (username, ao_server)
);
grant all                            on linux."LinuxUserServer" to aoadmin;
grant select, insert, update, delete on linux."LinuxUserServer" to aoserv_app;
