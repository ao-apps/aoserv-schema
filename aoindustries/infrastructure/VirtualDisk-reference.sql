alter table infrastructure."VirtualDisk"
  add constraint virtual_server_fkey
  foreign key (virtual_server)
  references infrastructure."VirtualServer" (server)
  on delete restrict
  on update cascade
;
