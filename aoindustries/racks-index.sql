create unique index racks_resource_type_super on racks (
  resource_type,
  resource
);
create unique index racks_farm_super on racks (
  farm,
  resource
);
