create table majordomo_servers (
  domain integer
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
grant all                    on majordomo_servers to aoadmin;
grant select, insert, delete on majordomo_servers to aoserv_app;
