create table physical_servers (
  resource integer primary key,
  resource_type text not null check (resource_type='physical_server'), -- Used as hidden constant type reference constraint
  server_farm integer not null, -- Used as hidden constraint
  rack integer not null,
  rack_farm integer not null, -- Used as hidden constraint
  rack_units smallint
    check (rack_units is null or rack_units>0),
  ram integer
    check (ram is null or ram>0),
  processor_type text,
  processor_speed integer
    check (processor_speed is null or processor_speed>0),
  processor_cores integer
    check (processor_cores is null or processor_cores>0),
  max_power float4
    check (max_power is null or max_power>0),
  supports_hvm boolean,
  -- Server and rack must be in the same farm.
  check (
    rack_farm=server_farm
  ),
  -- Must be consistent with null values
  check (
    (
        ram is null
        and processor_type is null
        and processor_speed is null
        and processor_cores is null
        and supports_hvm is null
    ) or (
        ram is not null
        and processor_type is not null
        and processor_speed is not null
        and processor_cores is not null
        and supports_hvm is not null
    )
  )
);
grant all on physical_servers to aoadmin;
grant select on physical_servers to aoserv_app;
