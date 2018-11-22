create table email."MajordomoServer" (
  "domain" integer
    primary key,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  version text
    not null,
  majordomo_pipe_address integer
    not null,
  owner_majordomo_add integer
    not null,
  majordomo_owner_add integer
    not null
);
grant all                    on email."MajordomoServer" to aoadmin;
grant select, insert, delete on email."MajordomoServer" to aoserv_app;
