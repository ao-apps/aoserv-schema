create sequence         email."SpamMessage_id_seq" cycle;
grant all            on email."SpamMessage_id_seq" to aoadmin;
grant select, update on email."SpamMessage_id_seq" to aoserv_app;

-- TODO: This has been unused for a very long time.
create table email."SpamMessage" (
  id integer
    default nextval('email."SpamMessage_id_seq"')
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
