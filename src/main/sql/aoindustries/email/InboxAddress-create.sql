create sequence         email."InboxAddress_id_seq" cycle;
grant all            on email."InboxAddress_id_seq" to aoadmin;
grant select, update on email."InboxAddress_id_seq" to aoserv_app;

create table email."InboxAddress" (
  id integer
    default nextval('email."InboxAddress_id_seq"')
    primary key,
  email_address integer
    not null,
  linux_server_account integer
    not null,
  unique(email_address, linux_server_account)
);
grant all                            on email."InboxAddress" to aoadmin;
grant select, insert, update, delete on email."InboxAddress" to aoserv_app;
