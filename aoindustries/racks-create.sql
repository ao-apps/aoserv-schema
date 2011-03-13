create table racks (
  resource integer primary key,
  resource_type text not null check (resource_type='rack'), -- Used as hidden constant type reference constraint
  farm integer not null,
  "name" text not null,
  max_power float4
    check (max_power is null or max_power>0),
  total_rack_units integer
    check (total_rack_units is null or total_rack_units>0),
  unique(farm, "name")
);
grant all on racks to aoadmin;
grant select on racks to aoserv_app;
