create table infrastructure."PhysicalServer" (
  server integer
    primary key,
  rack integer,
  rack_units smallint
    check (rack_units is null or rack_units > 0),
  ram integer
    check (ram is null or ram > 0),
  processor_type text,
  processor_speed integer
    check (processor_speed is null or processor_speed > 0),
  processor_cores integer
    check (processor_cores is null or processor_cores > 0),
  max_power real
    check (max_power is null or max_power > 0),
  supports_hvm boolean,
  -- TODO: Make a UpsType table
  ups_type text not null check (ups_type in ('none', 'datacenter', 'apc')) default 'none'
);
grant all    on infrastructure."PhysicalServer" to aoadmin;
grant select on infrastructure."PhysicalServer" to aoserv_app;
