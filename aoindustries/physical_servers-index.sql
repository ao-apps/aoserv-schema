create index physical_servers_processor_type_idx on physical_servers (
  processor_type
);
create unique index physical_servers_resource_type_super on physical_servers (
  resource_type,
  resource
);
create unique index physical_servers_server_farm_super on physical_servers (
  server_farm,
  resource
);
create index physical_servers_rack_farm_idx on physical_servers (
  rack,
  rack_farm
);
