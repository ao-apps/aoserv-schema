create table virtual_servers (
  server integer primary key,
  primary_ram integer
    not null
    check (primary_ram>0),
  secondary_ram integer
    not null
    check (secondary_ram>=0),
  primary_minimum_processor_type text,
  secondary_minimum_processor_type text,
  minimum_processor_architecture text
    not null,
  primary_minimum_processor_speed integer
    check (primary_minimum_processor_speed is null or primary_minimum_processor_speed>0),
  secondary_minimum_processor_speed integer
    check (secondary_minimum_processor_speed is null or secondary_minimum_processor_speed>0),
  primary_processor_cores smallint
    not null
    check (primary_processor_cores>0),
  secondary_processor_cores smallint
    not null
    check (secondary_processor_cores>0),
  primary_processor_weight smallint
    not null
    check (primary_processor_weight>=1 and primary_processor_weight<=1024),
  secondary_processor_weight smallint
    not null
    check (secondary_processor_weight>=1 and secondary_processor_weight<=1024),
  primary_physical_server integer
    not null,
  primary_physical_server_locked boolean
    not null,
  secondary_physical_server integer
    not null,
  secondary_physical_server_locked boolean
    not null,
  check (not primary_physical_server=secondary_physical_server)
);
grant all on virtual_servers to aoadmin;
grant select on virtual_servers to aoserv_app;
