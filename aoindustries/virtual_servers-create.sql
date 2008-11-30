create table virtual_servers (
  server integer primary key,
  primary_ram integer
    not null
    check (primary_ram>0),
  secondary_ram integer
    check (secondary_ram is null or secondary_ram>0),
  primary_minimum_processor_type text,
  secondary_minimum_processor_type text,
  minimum_processor_architecture text
    not null
    default 'i686',
  primary_minimum_processor_speed integer
    check (primary_minimum_processor_speed is null or primary_minimum_processor_speed>0),
  secondary_minimum_processor_speed integer
    check (secondary_minimum_processor_speed is null or secondary_minimum_processor_speed>0),
  primary_processor_cores smallint
    not null
    check (primary_processor_cores>0),
  secondary_processor_cores smallint
    check (secondary_processor_cores is null or secondary_processor_cores>0),
  primary_processor_weight smallint
    not null
    check (primary_processor_weight>=1 and primary_processor_weight<=1024),
  secondary_processor_weight smallint
    check (secondary_processor_weight is null or (secondary_processor_weight>=1 and secondary_processor_weight<=1024)),
  primary_physical_server integer
    not null,
  primary_physical_server_locked boolean
    not null
    default false,
  secondary_physical_server integer
    not null,
  secondary_physical_server_locked boolean
    not null
    default false,
  requires_hvm boolean
    not null
    default false,
  check (not primary_physical_server=secondary_physical_server),
  check (
    (
      secondary_ram is not null
      and secondary_processor_cores is not null
      and secondary_processor_weight is not null
    ) or (
      secondary_ram is null
      and secondary_processor_cores is null
      and secondary_processor_weight is null
    )
  ),
  -- secondary_minimum_processor_type cannot be non-null while secondary_ram is null
  check (
    secondary_ram is not null
    or secondary_minimum_processor_type is null
  ),
  -- secondary_minimum_processor_speed cannot be non-null while secondary_ram is null
  check (
    secondary_ram is not null
    or secondary_minimum_processor_speed is null
  )
);
grant all on virtual_servers to aoadmin;
grant select on virtual_servers to aoserv_app;
