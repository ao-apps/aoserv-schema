create table mysql."MysqlServer" (
  net_bind integer
    primary key,
  "name" text
    not null,
  ao_server integer
    not null,
  version integer
    not null,
  max_connections integer
    not null,
  unique (ao_server, "name")
);
grant all    on mysql."MysqlServer" to aoadmin;
grant select on mysql."MysqlServer" to aoserv_app;
