create sequence email_smtp_relays_pkey_seq cycle;
grant all on email_smtp_relays_pkey_seq to aoadmin;
grant select, update on email_smtp_relays_pkey_seq to aoserv_app;

create table email_smtp_relays (
  pkey integer
    default nextval('email_smtp_relays_pkey_seq')
    constraint email_smtp_relays_pkey primary key,
  package text
    not null,
  ao_server integer,
  host text
    not null,
  type text
    not null,
  created timestamp with time zone
    not null,
  last_refreshed timestamp with time zone
    not null,
  refresh_count integer
    not null,
  expiration timestamp with time zone,
  disable_log integer,
  unique(package, ao_server, host)
);
grant all on email_smtp_relays to aoadmin;
grant select, insert, update, delete on email_smtp_relays to aoserv_app;
