create table virtual_servers (
  server integer primary key,
  primary_ram integer
    not null
    check (primary_ram>0),
  primary_ram_target integer
    not null
    check (primary_ram_target>0),
  secondary_ram integer
    check (secondary_ram is null or secondary_ram>0),
  secondary_ram_target integer
    check (secondary_ram_target is null or secondary_ram_target>0),
  minimum_processor_type text,
  minimum_processor_architecture text
    not null
    default 'i686',
  minimum_processor_speed integer
    check (minimum_processor_speed is null or minimum_processor_speed>0),
  minimum_processor_speed_target integer
    check (minimum_processor_speed_target is null or minimum_processor_speed_target>0),
  processor_cores smallint
    not null
    check (processor_cores>0),
  processor_cores_target smallint
    not null
    check (processor_cores_target>0),
  processor_weight smallint
    not null
    check (processor_weight in (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024)),
  processor_weight_target smallint
    not null
    check (processor_weight_target in (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024)),
  primary_physical_server_locked boolean
    not null
    default false,
  secondary_physical_server_locked boolean
    not null
    default false,
  requires_hvm boolean
    not null
    default false,
  vnc_password text
    unique
    check (length(vnc_password)>=8) -- Must be at least 8 characters
);
grant all    on virtual_servers to aoadmin;
grant select on virtual_servers to aoserv_app;
