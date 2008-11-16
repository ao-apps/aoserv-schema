create index virtual_servers_primary_minimum_processor_type_idx on virtual_servers (
  primary_minimum_processor_type
);
create index virtual_servers_secondary_minimum_processor_type_idx on virtual_servers (
  secondary_minimum_processor_type
);
create index virtual_servers_minimum_processor_architecture_idx on virtual_servers (
  minimum_processor_architecture
);
create index virtual_servers_primary_physical_server_idx on virtual_servers (
  primary_physical_server
);
create index virtual_servers_secondary_physical_server_idx on virtual_servers (
  secondary_physical_server
);
