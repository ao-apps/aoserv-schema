create index server_farms_backup_farm_idx on server_farms (
  backup_farm
);
create index server_farms_owner_idx on server_farms (
  owner
);
