create table usernames (
  username text
    constraint usernames_pkey primary key,
  package text
    not null,
  disable_log integer
);
grant all on usernames to aoadmin;
grant select, insert, update, delete on usernames to aoserv_app;
