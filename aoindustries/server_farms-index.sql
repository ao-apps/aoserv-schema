create unique index server_farms_name_lower_uni on server_farms (
  lower("name")
);
create unique index server_farms_resource_type_super on server_farms (
  resource_type,
  resource
);
