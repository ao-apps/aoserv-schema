create sequence         email.email_lists_pkey_seq cycle;
grant all            on email.email_lists_pkey_seq to aoadmin;
grant select, update on email.email_lists_pkey_seq to aoserv_app;

create table email_lists (
  pkey integer
    default nextval('email.email_lists_pkey_seq')
    primary key,
  "path" text
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  disable_log integer
);
grant all                            on email_lists to aoadmin;
grant select, insert, update, delete on email_lists to aoserv_app;
