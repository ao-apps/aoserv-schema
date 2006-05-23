create sequence email_lists_pkey_seq cycle;
grant all on email_lists_pkey_seq to aoadmin;
grant select, update on email_lists_pkey_seq to aoserv_app;

create table email_lists (
  pkey integer
    default nextval('email_lists_pkey_seq')
    constraint email_lists_pkey primary key,
  path text
    not null,
  linux_account integer
    not null,
  linux_group integer
    not null,
  backup_level smallint
    not null,
  backup_retention smallint
    not null,
  disable_log integer
);
grant all on email_lists to aoadmin;
grant select, insert, update, delete on email_lists to aoserv_app;
