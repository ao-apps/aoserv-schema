create sequence         email.spam_email_messages_pkey_seq cycle;
grant all            on email.spam_email_messages_pkey_seq to aoadmin;
grant select, update on email.spam_email_messages_pkey_seq to aoserv_app;

create table spam_email_messages (
  pkey integer
    default nextval('email.spam_email_messages_pkey_seq')
    primary key,
  email_relay integer
    not null,
  time timestamp with time zone
    not null
    default now(),
  message text
    not null
);
grant all                            on spam_email_messages to aoadmin;
grant select, insert, update, delete on spam_email_messages to aoserv_app;
