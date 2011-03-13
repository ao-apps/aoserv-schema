create index virtual_servers_minimum_processor_type_idx on virtual_servers (
  minimum_processor_type
);
create index virtual_servers_minimum_processor_architecture_idx on virtual_servers (
  minimum_processor_architecture
);
create unique index virtual_servers_resource_type_super on virtual_servers (
  resource_type,
  resource
);
