alter table backup_servers
  add constraint resource_fkey
  foreign key (resource_type, resource)
  references servers (resource_type, resource)
  on delete restrict
  on update cascade
;
