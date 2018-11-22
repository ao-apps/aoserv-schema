create sequence         email."SpamMessage_pkey_seq" cycle;
grant all            on email."SpamMessage_pkey_seq" to aoadmin;
grant select, update on email."SpamMessage_pkey_seq" to aoserv_app;

-- TODO: This has been unused for a very long time.
create table email."SpamMessage" (
  pkey integer
    default nextval('email."SpamMessage_pkey_seq"')
    primary key,
  email_relay integer
    not null,
  "time" timestamp with time zone
    not null
    default now(),
  message text
    not null
);
grant all                            on email."SpamMessage" to aoadmin;
grant select, insert, update, delete on email."SpamMessage" to aoserv_app;
