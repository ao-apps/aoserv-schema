create sequence interbase_server_users_pkey_seq cycle;
grant all on interbase_server_users_pkey_seq to aoadmin;
grant select, update on interbase_server_users_pkey_seq to aoserv_app;

create table interbase_server_users (
  pkey integer
    default nextval('interbase_server_users_pkey_seq')
    constraint interbase_server_users_pkey primary key,
  username text
    not null,
  ao_server integer
    not null,
  disable_log integer,
  predisable_password text,
  unique(username, ao_server)
);
grant all on interbase_server_users to aoadmin;
grant select, update, insert, delete on interbase_server_users to aoserv_app;
