create table mysql."Server" (
  bind integer
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
grant all                    on mysql."Server" to aoadmin;
grant select                 on mysql."Server" to aoserv_app;
grant select, insert, delete on mysql."Server" to management;
