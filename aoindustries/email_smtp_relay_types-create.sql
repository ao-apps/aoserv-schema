create table email_smtp_relay_types (
  "name" text primary key,
  sendmail_config text not null
);
grant all on email_smtp_relay_types to aoadmin;
grant select on email_smtp_relay_types to aoserv_app;
