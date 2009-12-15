create sequence email_smtp_relays_pkey_seq cycle;
grant all on email_smtp_relays_pkey_seq to aoadmin;
grant select, update on email_smtp_relays_pkey_seq to aoserv_app;

create table email_smtp_relays (
  pkey integer default nextval('email_smtp_relays_pkey_seq') constraint email_smtp_relays_pkey primary key,
  accounting text not null,
  ao_server integer,
  "host" text not null,
  "type" text not null,
  created timestamp not null,
  last_refreshed timestamp not null,
  refresh_count integer not null,
  expiration timestamp,
  disable_log integer
);
grant all on email_smtp_relays to aoadmin;
grant select, insert, update, delete on email_smtp_relays to aoserv_app;
