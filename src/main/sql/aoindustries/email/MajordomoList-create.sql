create table email."MajordomoList" (
  email_list integer
    primary key,
  majordomo_server integer
    not null,
  "name" text
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
  unique (majordomo_server, "name")
);
grant all                    on email."MajordomoList" to aoadmin;
grant select, insert, delete on email."MajordomoList" to aoserv_app;
