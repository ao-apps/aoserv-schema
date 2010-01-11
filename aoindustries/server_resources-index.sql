create unique index server_resources_resource_type_super on server_resources (
  resource_type,
  resource
);
create unique index server_resources_accounting_super on server_resources (
  accounting,
  resource
);
create unique index server_resources_server_super on server_resources (
  server,
  resource
);
create index server_resources_business_servers_idx on server_resources (
  accounting,
  server
);
