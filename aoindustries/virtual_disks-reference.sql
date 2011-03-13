alter table virtual_disks
  add constraint virtual_server_fkey
  foreign key (virtual_server)
  references virtual_servers (resource)
  on delete restrict
  on update cascade
;
