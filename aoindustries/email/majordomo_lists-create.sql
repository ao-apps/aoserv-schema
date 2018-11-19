create table majordomo_lists (
  email_list integer
    constraint majordomo_lists_pkey primary key,
  majordomo_server integer
    not null,
  name text
    not null,
  listname_pipe_add integer
    not null
    unique,
  listname_list_add integer
    not null
    unique,
  owner_listname_add integer
    not null
    unique,
  listname_owner_add integer
    not null
    unique,
  listname_approval_add integer
    not null
    unique,
  listname_request_pipe_add integer
    not null
    unique,
  unique (majordomo_server, name)
);
grant all                    on majordomo_lists to aoadmin;
grant select, insert, delete on majordomo_lists to aoserv_app;
