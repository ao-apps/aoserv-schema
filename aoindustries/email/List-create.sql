create sequence         email."List_pkey_seq" cycle;
grant all            on email."List_pkey_seq" to aoadmin;
grant select, update on email."List_pkey_seq" to aoserv_app;

create table email."List" (
  pkey integer
    default nextval('email."List_pkey_seq"')
    primary key,
  "path" text
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  disable_log integer
);
grant all                            on email."List" to aoadmin;
grant select, insert, update, delete on email."List" to aoserv_app;
