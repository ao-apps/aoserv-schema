create table email."SmtpRelayType" (
  "name" text
    primary key,
  sendmail_config text
    not null,
  qmail_config text
    not null
);
grant all    on email."SmtpRelayType" to aoadmin;
grant select on email."SmtpRelayType" to aoserv_app;
