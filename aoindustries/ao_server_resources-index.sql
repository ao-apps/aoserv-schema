create unique index ao_server_resources_resource_type_super on ao_server_resources (
  resource_type,
  resource
);
create unique index ao_server_resources_accounting_super on ao_server_resources (
  accounting,
  resource
);
create unique index ao_server_resources_ao_server_super on ao_server_resources (
  ao_server,
  resource
);
create index ao_server_resources_business_servers_idx on ao_server_resources (
  accounting,
  ao_server
);
